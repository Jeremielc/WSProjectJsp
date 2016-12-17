package fr.ensicaen.si.bean;

import java.util.List;

import fr.ensicaen.si.dao.client.ClientDao;
import fr.ensicaen.si.dao.client.DbClientDao;
import fr.ensicaen.si.dao.operation.OperationDao;
import fr.ensicaen.si.model.Client;
import fr.ensicaen.si.model.Operation;

public class Test {
	private int id;
	private String firstname, lastname;
	private List<Operation> operations;
	
	public Test() {
		
	}
	
	public List<Client> retrieveOperations() {
		ClientDao cDao = ClientDao.getInstance();
		cDao.setDelegate(new DbClientDao());
		
		List<Client> clients = cDao.getByFullname(lastname, firstname);
		if (clients.size() == 1) {
			operations = OperationDao.getInstance().getById(clients.get(0).getId());
		}
		
		return clients;
	}
	
	/*public String reset() {
		this.id = 0;
		this.firstname = "";
		this.lastname = "";
		this.operations = null;
		return "";
	}*/
	
	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}

	public String getFirstname() {
		return firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public List<Operation> getOperations() {
		return operations;
	}

	public void setOperations(List<Operation> operations) {
		this.operations = operations;
	}
}
