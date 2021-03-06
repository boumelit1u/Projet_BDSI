package beans;

import java.util.ArrayList;

public class AStageBean {

	private ArrayList<String> nom, prenom, annee, entreprise, adresse, ville, pays, domaine, langue, logo_path;
	private ArrayList<Integer> id;
	private int nbStages;
	
	public AStageBean(){
		nom = new ArrayList<String>();
		prenom = new ArrayList<String>();
		annee = new ArrayList<String>();
		pays = new ArrayList<String>();
		ville = new ArrayList<String>();
		id = new ArrayList<Integer>();
		entreprise = new ArrayList<String>();
		domaine = new ArrayList<String>();
		langue = new ArrayList<String>();
		logo_path = new ArrayList<String>();
	}
	
	public ArrayList<String> getNom() {
		return nom;
	}
	
	public void setNom(ArrayList<String> nom) {
		this.nom = nom;
	}
	
	public ArrayList<String> getPrenom() {
		return prenom;
	}
	
	public void setPrenom(ArrayList<String> prenom) {
		this.prenom = prenom;
	}
	
	public ArrayList<String> getAnnee() {
		return annee;
	}

	public void setAnnee(ArrayList<String> annee) {
		this.annee = annee;
	}

	public ArrayList<String> getEntreprise() {
		return entreprise;
	}

	public void setEntreprise(ArrayList<String> entreprise) {
		this.entreprise = entreprise;
	}

	public ArrayList<String> getAdresse() {
		return adresse;
	}

	public void setAdresse(ArrayList<String> adresse) {
		this.adresse = adresse;
	}

	public ArrayList<String> getVille() {
		return ville;
	}

	public void setVille(ArrayList<String> ville) {
		this.ville = ville;
	}

	public ArrayList<String> getPays() {
		return pays;
	}

	public void setPays(ArrayList<String> pays) {
		this.pays = pays;
	}
	
	public ArrayList<String> getDomaine() {
		return domaine;
	}

	public void setDomaine(ArrayList<String> domaine) {
		this.domaine = domaine;
	}
	
	public ArrayList<String> getLangue() {
		return langue;
	}

	public void setLangue(ArrayList<String> langue) {
		this.langue = langue;
	}
	
	public ArrayList<String> getLogo_path() {
		return logo_path;
	}

	public void setLogo_path(ArrayList<String> logo_path) {
		this.logo_path = logo_path;
	}

	public ArrayList<Integer> getId() {
		return id;
	}

	public void setId(ArrayList<Integer> id) {
		this.id = id;
	}

	public int getNbStages() {
		return nom.size();
	}

	public void setNbStages(int nbStages) {
		this.nbStages = nbStages;
	}
	

}
