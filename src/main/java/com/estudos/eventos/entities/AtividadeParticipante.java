package com.estudos.eventos.entities;

import jakarta.persistence.EmbeddedId;
import jakarta.persistence.Entity;
import jakarta.persistence.Table;

import java.util.Objects;

@Entity
@Table(name = "ATIVIDADE_PARTICIPANTE")
public class AtividadeParticipante {

    @EmbeddedId
    private AtividadeParticipantePK id = new AtividadeParticipantePK();

    public AtividadeParticipante(AtividadeParticipantePK id) {
        this.id = id;
    }

    public AtividadeParticipantePK getId() {
        return id;
    }

    public void setId(AtividadeParticipantePK id) {
        this.id = id;
    }

    @Override
    public boolean equals(Object o) {
        if (o == null || getClass() != o.getClass()) return false;
        AtividadeParticipante that = (AtividadeParticipante) o;
        return Objects.equals(id, that.id);
    }

    @Override
    public int hashCode() {
        return Objects.hashCode(id);
    }
}
