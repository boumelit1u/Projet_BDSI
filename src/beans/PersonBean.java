package beans;

public class PersonBean {

	private String nom, prenom, annee, mail, fonction;
	private int id;
	
	public PersonBean() {
		id=0;
		nom = "nom";
		prenom = "prenom";
		annee = "null";
		mail = "null";
		fonction="null";
	}
	
	public PersonBean(String nom, String prenom, String annee, String mail, String fonc){
		this.nom  = nom;
		this.prenom = prenom;
		this.annee = annee;
		this.mail = mail;
		this.fonction = fonc;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public String getAnnee() {
		return annee;
	}

	public void setAnnee(String annee) {
		this.annee = annee;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFonction() {
		return fonction;
	}

	public void setFonction(String fonction) {
		this.fonction = fonction;
	}

}
