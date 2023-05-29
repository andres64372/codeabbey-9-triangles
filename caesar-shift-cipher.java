package ca_caesarshiftcipher;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class CA_CaesarShiftCipher {

    public static void main(String[] args) {
        int k = 14;
        int index = 0;
        String res_str = "";
        String str_input = "ZSH VWA HVFCK HVS TWFGH GHCBS QOZZSR WH HVS FWGWBU GIB O BWUVH OH HVS CDSFO.\n" +
"WB OBQWSBH DSFGWO HVSFS KOG O YWBU.\n" +
"UWJS MCIF FCCYG PIH BCH RWZOFOA.\n" +
"HVS CBQS OBR TIHIFS YWBU.\n" +
"HC IG WB CZRSB GHCFWSG HVS RSOR PIFM HVSWF CKB RSOR.\n" +
"HVS GSQFSH CT VSOHVSF OZS.";

        String[] str_arr = str_input.split("\\n");
//         String[] alphabet
//                 ={"A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"};
        //List<Character> alphabet = Arrays.asList('A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z');
          List<Character> alphabet = Arrays.asList('Z', 'Y', 'X', 'W', 'V', 'U', 'T', 'S', 'R', 'Q', 'P', 'O', 'N', 'M', 'L', 'K', 'J', 'I', 'H', 'G', 'F', 'E', 'D', 'C', 'B', 'A');
        for (int i = 0; i < str_arr.length; i++) {
            //System.out.println(str_arr[i].length());

            for (int j = 0; j < str_arr[i].length(); j++) {
                if (alphabet.contains(str_arr[i].charAt(j))) {
                    index = (alphabet.indexOf(str_arr[i].charAt(j)) + k) % alphabet.size();
                    res_str = res_str + alphabet.get(index);
                } else {
                    res_str = res_str + " ";
                }
            }
            System.out.println(res_str.trim() + ".");
            res_str = "";
        }
    }

}
