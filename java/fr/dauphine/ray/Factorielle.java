/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.dauphine.ray;

/**
 *
 * @author Rui ZHANG
 */
public class Factorielle {
    public static String calculFact(int valeur){
        String res = "";
        int a = 1;
        int b = 1;
        for (int i =1; i<= valeur;i++){
            b = b * i;
            res += a+ "*"+ i +"="+b+ "<br>";
            a = a * i;
        }
        return res;
    }

    
}
