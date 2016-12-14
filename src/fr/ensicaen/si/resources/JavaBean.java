package fr.ensicaen.si.resources;

import java.io.Serializable;

import javafx.beans.property.FloatProperty;
import javafx.beans.property.IntegerProperty;
import javafx.beans.property.SimpleFloatProperty;
import javafx.beans.property.SimpleIntegerProperty;
import javafx.beans.property.SimpleStringProperty;
import javafx.beans.property.StringProperty;

public class JavaBean implements Serializable {
	private final IntegerProperty id, operationType;
	private final FloatProperty amount;
	private final StringProperty cardNum, accountNum, date;
	
	public JavaBean() {
		id = new SimpleIntegerProperty();
		operationType = new SimpleIntegerProperty();
		amount = new SimpleFloatProperty();
		cardNum = new SimpleStringProperty();
		accountNum = new SimpleStringProperty();
		date = new SimpleStringProperty();
	}
	
	public IntegerProperty id() {
		return id;
	}

	public IntegerProperty operationType() {
		return operationType;
	}

	public FloatProperty amount() {
		return amount;
	}

	public StringProperty cardNum() {
		return cardNum;
	}

	public StringProperty accountNum() {
		return accountNum;
	}

	public StringProperty date() {
		return date;
	}
	
	public int getId() {
		return this.id.get();
	}
	
	public int getOperationType() {
		return this.operationType.get();
	}
	
	public float getAmount() {
		return this.amount.get();
	}
	
	public String getCardNum() {
		return this.cardNum.get();
	}
	
	public String getAccountNum() {
		return this.accountNum.get();
	}
	
	public String getDate() {
		return this.date.get();
	}
	
	public void setId(int id) {
		this.id.set(id);
	}
	
	public void setOperationType(int operationtype) {
		this.operationType.set(operationtype);
	}
	
	public void setAmount(float amount) {
		this.amount.set(amount);
	}
	
	public void setCardNum(String cardNum) {
		this.cardNum.set(cardNum);
	}
	
	public void setAccountNum(String accountNum) {
		this.accountNum.set(accountNum);
	}
	
	public void setDate(String date) {
		this.date.set(date);
	}

}
