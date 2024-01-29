package com.example.YoutubemusicSpringbootApp.Strings;

import java.net.InetAddress;
import java.net.UnknownHostException;

public class GeneralStrings {

    static String getIpAddress() {
        String ipAddress = null;
        try {
            // Get the local host address
            InetAddress localhost = InetAddress.getLocalHost();
            ipAddress = localhost.getHostAddress();

        } catch (UnknownHostException e) {
            e.printStackTrace();
        }

        return ipAddress;
    }

    public static String domainName = getIpAddress() + ":8080";

    public static String version = "/v1";

    public static String users = domainName + version + "/users";

    public static String categoryUri = domainName + version + "/browse/categories";

    public static String playlistUri = domainName + version + "/playlists";

    public static String trackUrl = domainName + version + "/tracks";

    public static String albumUrl = domainName + version + "/albums";

}
