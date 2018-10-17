package model;

public class User {

	private int theId;
	private String theName;
	private String thePassword;
	private String theAddress;
	
	public User(String aName, String aPassword, String aAddress) {
		theName = aName;
		thePassword = aPassword;
		theAddress = aAddress;
	}
	
	public User(int aId,String aName, String aPassword, String aAddress) {
		theId = aId;
		theName = aName;
		thePassword = aPassword;
		theAddress = aAddress;
	}

	public int getTheId() {
		return theId;
	}

	public void setTheId(int theId) {
		this.theId = theId;
	}

	public String getTheName() {
		return theName;
	}

	public void setTheName(String theName) {
		this.theName = theName;
	}

	public String getThePassword() {
		return thePassword;
	}

	public void setThePassword(String thePassword) {
		this.thePassword = thePassword;
	}

	public String getTheAddress() {
		return theAddress;
	}

	public void setTheAddress(String theAddress) {
		this.theAddress = theAddress;
	}
	
	
}
