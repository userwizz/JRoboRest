package com.mydomain.robot.jrobot;

/*
 * 
 * A simple Java class to test how to import own Java library 
 * 
 */

import java.io.IOException;

public class JavaLib {

    public static final String ROBOT_LIBRARY_SCOPE = "GLOBAL";
    private String mHost = "";

    
    public boolean pingHost (String host) throws IOException, InterruptedException {
        
    	mHost = host;
    	boolean isWindows = System.getProperty("os.name").toLowerCase().contains("win");
        
    	ProcessBuilder processBuilder = new ProcessBuilder("ping", isWindows? "-n" : "-c", "1", "-w", "2", host);
        Process proc = processBuilder.start();

        int returnVal = proc.waitFor();
        return returnVal == 0;
    }
    
    public void VerifyResponse (boolean response) {
        if (!response) throw new AssertionError( "Host \"" + mHost + "\" does not reply to ping!" );
    }
    
}