package com.company.util;

public class LinkGeneratorUtils {

    public static String generateResetLink(String email) {
        return "https://storage-service-a.herokuapp.com/reset-password/" + email;
    }

}
