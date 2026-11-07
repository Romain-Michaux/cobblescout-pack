package net.levelscraft7.rustlingspots.spot;

import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

// Ajout CobbleScout : le serveur ne connaît que l'anglais, donc on traduit le nom du Pokémon
// avec le fr_fr.json de Cobblemon avant de l'envoyer dans les messages de Rustling Spots.
public final class CobbleScoutNoms {
    private static Map<String, String> fr;

    private CobbleScoutNoms() {
    }

    // Remplace Component.getString() sur le nom affiché du Pokémon.
    public static String nom(Object nom) {
        try {
            Object contenu = nom.getClass().getMethod("method_10851").invoke(nom);
            if (contenu.getClass().getName().equals("net.minecraft.class_2588")) {
                String cle = (String) contenu.getClass().getMethod("method_11022").invoke(contenu);
                String traduit = traductions().get(cle);
                if (traduit != null) {
                    return traduit;
                }
            }
        } catch (Exception ignored) {
        }
        try {
            return (String) nom.getClass().getMethod("getString").invoke(nom);
        } catch (Exception e) {
            return String.valueOf(nom);
        }
    }

    private static synchronized Map<String, String> traductions() {
        if (fr == null) {
            fr = new HashMap<>();
            try (InputStream in = CobbleScoutNoms.class.getClassLoader().getResourceAsStream("assets/cobblemon/lang/fr_fr.json")) {
                if (in != null) {
                    String json = new String(in.readAllBytes(), StandardCharsets.UTF_8);
                    Matcher m = Pattern.compile("\"(cobblemon\\.species\\.[a-z0-9_]+\\.name)\"\\s*:\\s*\"((?:[^\"\\\\]|\\\\.)*)\"").matcher(json);
                    while (m.find()) {
                        fr.put(m.group(1), decode(m.group(2)));
                    }
                }
            } catch (Exception ignored) {
            }
        }
        return fr;
    }

    private static String decode(String s) {
        StringBuilder b = new StringBuilder();
        for (int i = 0; i < s.length(); i++) {
            char c = s.charAt(i);
            if (c == '\\' && i + 1 < s.length()) {
                char n = s.charAt(++i);
                if (n == 'u' && i + 4 < s.length()) {
                    b.append((char) Integer.parseInt(s.substring(i + 1, i + 5), 16));
                    i += 4;
                } else {
                    b.append(n);
                }
            } else {
                b.append(c);
            }
        }
        return b.toString();
    }
}
