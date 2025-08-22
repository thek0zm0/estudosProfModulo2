package com.estudos.eventos.entities;

import jakarta.persistence.Embeddable;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;

import java.util.Objects;

@Embeddable
public class AtividadeParticipantePK {

    @ManyToOne
    @JoinColumn(name = "atividade_id")
    private Atividade atividade;

    @ManyToOne
    @JoinColumn(name = "participante_id")
    private Participante participante;

    public AtividadeParticipantePK(Atividade atividade, Participante participante) {
        this.atividade = atividade;
        this.participante = participante;
    }

    public AtividadeParticipantePK() {
    }

    public Atividade getAtividade() {
        return atividade;
    }

    public void setAtividade(Atividade atividade) {
        this.atividade = atividade;
    }

    public Participante getParticipante() {
        return participante;
    }

    public void setParticipante(Participante participante) {
        this.participante = participante;
    }

    @Override
    public boolean equals(Object o) {
        if (o == null || getClass() != o.getClass()) return false;
        AtividadeParticipantePK that = (AtividadeParticipantePK) o;
        return Objects.equals(atividade, that.atividade) && Objects.equals(participante, that.participante);
    }

    @Override
    public int hashCode() {
        return Objects.hash(atividade, participante);
    }
}
