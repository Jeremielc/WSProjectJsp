package fr.ensicaen.si.bean;

public class TestBean {
	private String nom;
	private String cmd;
	
	public String getNom() {
		return nom;
	}
	public String getCmd() {
		return cmd;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public void setCmd(String cmd) {
		this.cmd = cmd;
	}
	
	
	public String testmethod() {
		if ("byname".equals(cmd)) return "par nom : "+nom;
		if ("byid".equals(cmd)) return "par id";
		return "";
	}
}
