// Réécrit CardItem.getFormattedName(id) en : Component.translatable("cobblemon.species." + id).getString()
// pour que l'infobulle des cartes affiche le nom traduit (fr_fr) au lieu du nom anglais.
// Usage : java PatchCardName.java <CardItem.class entrée> <CardItem.class sortie>
import java.lang.classfile.*;
import java.lang.constant.*;
import java.nio.file.*;

public class PatchCardName {
    public static void main(String[] a) throws Exception {
        ClassDesc text = ClassDesc.of("net.minecraft.class_2561");
        ClassDesc mutable = ClassDesc.of("net.minecraft.class_5250");
        ClassDesc str = ConstantDescs.CD_String;
        ClassFile cf = ClassFile.of();
        ClassModel cm = cf.parse(Files.readAllBytes(Path.of(a[0])));
        int[] n = {0};
        byte[] out = cf.transformClass(cm, ClassTransform.transformingMethods(
            m -> m.methodName().equalsString("getFormattedName"),
            (mb, me) -> {
                if (me instanceof CodeModel) {
                    n[0]++;
                    mb.withCode(cb -> cb
                        .ldc("cobblemon.species.")
                        .aload(1)
                        .invokevirtual(str, "concat", MethodTypeDesc.of(str, str))
                        .invokestatic(text, "method_43471", MethodTypeDesc.of(mutable, str), true)
                        .invokeinterface(text, "getString", MethodTypeDesc.of(str))
                        .areturn());
                } else {
                    mb.with(me);
                }
            }));
        if (n[0] != 1) throw new IllegalStateException("getFormattedName introuvable");
        Files.write(Path.of(a[1]), out);
        System.out.println("OK");
    }
}
