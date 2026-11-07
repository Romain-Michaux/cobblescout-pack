// Dans PokemonSpawnResolver, remplace pokemon.getDisplayName(false).getString() par
// CobbleScoutNoms.nom(pokemon.getDisplayName(false)) pour envoyer le nom français.
// Usage : java PatchRustlingName.java <PokemonSpawnResolver.class entrée> <sortie>
import java.lang.classfile.*;
import java.lang.classfile.instruction.InvokeInstruction;
import java.lang.constant.*;
import java.nio.file.*;

public class PatchRustlingName {
    public static void main(String[] a) throws Exception {
        ClassDesc helper = ClassDesc.of("net.levelscraft7.rustlingspots.spot.CobbleScoutNoms");
        ClassFile cf = ClassFile.of();
        ClassModel cm = cf.parse(Files.readAllBytes(Path.of(a[0])));
        int[] n = {0};
        byte[] out = cf.transformClass(cm, ClassTransform.transformingMethodBodies((cb, ce) -> {
            if (ce instanceof InvokeInstruction i
                    && i.owner().asInternalName().equals("net/minecraft/class_5250")
                    && i.name().equalsString("getString")) {
                n[0]++;
                cb.invokestatic(helper, "nom", MethodTypeDesc.of(ConstantDescs.CD_String, ConstantDescs.CD_Object));
            } else {
                cb.with(ce);
            }
        }));
        if (n[0] != 1) throw new IllegalStateException("appels trouvés : " + n[0]);
        Files.write(Path.of(a[1]), out);
        System.out.println("OK");
    }
}
