package com.ecodeup.com;

import java.io.Serializable;

public class jbean implements Serializable {
	private static final long serialVersionUID = -7922651971522321651L;
	public String getEstudiante() {
		return estudiante;
	}
	public void setEstudiante(String estudiante) {
		this.estudiante = estudiante;
	}
	public int getEdad() {
		return edad;
	}
	public void setEdad(int edad) {
		this.edad = edad;
	}
	public String getIdentificacion() {
		return identificacion;
	}
	public void setIdentificacion(String identificacion) {
		this.identificacion = identificacion;
	}
	private String estudiante;
	private int edad;
	private String identificacion;
	
}
