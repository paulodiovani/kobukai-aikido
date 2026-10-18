---
layout: page
title: "Onde Treinar"
permalink: /dojos/
---

<p>
  Conheça os dojos da Associação Kobukai de Aikido. Cada dojo é liderado
  por um Sensei responsável e oferece treinamentos regulares. Entre em
  contato para mais informações sobre horários e aulas experimentais.
</p>

<div class="gallery-grid">
  <!-- Fotos dos dojos serão adicionadas aqui.
       Exemplo:
       <div class="gallery-item">
         <img src="/assets/images/dojo-porto-alegre.jpg" alt="Dojo Porto Alegre">
         <p class="gallery-caption">Dojo Porto Alegre</p>
       </div>
  -->
</div>

<div class="dojo-list">
  {% for dojo in site.data.dojos %}
  <div class="dojo-card">
    <h3 class="dojo-city">{{ dojo.cidade }}</h3>
    <p class="dojo-state">{{ dojo.estado }}</p>

    {% if dojo.senseis.size > 0 %}
    <div class="dojo-sensei">
      <strong>Sensei{{ dojo.senseis.size | pluralize: "", "s" }}:</strong>
      {% for sensei in dojo.senseis %}
        <p>{{ sensei.nome }}{% if sensei.graduacao %} — {{ sensei.graduacao }}{% endif %}</p>
      {% endfor %}
    </div>
    {% endif %}

    {% if dojo.endereco and dojo.endereco != "" and dojo.endereco != "A definir" %}
    <p class="dojo-info"><strong>Endereço:</strong> {{ dojo.endereco }}</p>
    {% endif %}

    {% if dojo.instagram and dojo.instagram != "" %}
    <p class="dojo-info">
      <strong>Instagram:</strong>
      <a href="https://www.instagram.com/{{ dojo.instagram | replace: '@', '' }}/" target="_blank">
        {{ dojo.instagram }}
      </a>
    </p>
    {% endif %}

    {% if dojo.telefone and dojo.telefone != "" %}
    <p class="dojo-info"><strong>Telefone:</strong> {{ dojo.telefone }}</p>
    {% endif %}

    {% if dojo.email and dojo.email != "" %}
    <p class="dojo-info"><strong>Email:</strong> {{ dojo.email }}</p>
    {% endif %}

    {% if dojo.horario and dojo.horario != "" %}
    <p class="dojo-info"><strong>Horário:</strong> {{ dojo.horario }}</p>
    {% endif %}
  </div>
  {% endfor %}
</div>
