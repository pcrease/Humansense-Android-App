package ca.mcgill.hs.plugin;

import ca.mcgill.hs.serv.HSService;
import android.content.Context;
import android.preference.Preference;

/**
 * Abstract class to be extended by all InputPlugins. Provides an interface for using InputPlugins.
 * 
 * @author Cicerone Cojocaru, Jonathan Pitre
 *
 */
public abstract class InputPlugin implements Plugin{
		
	
	protected void write(DataPacket dp){
		HSService.onDataReady(dp, this);
	}
	
	public static Preference[] getPreferences(Context c){return null;}
	
	public static boolean hasPreferences() {return false;}

}
