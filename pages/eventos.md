---
layout: page
title: "Eventos"
permalink: /eventos/
---

<p>
  Confira a agenda de seminários, exames e eventos da Associação Kobukai
  de Aikido. Você pode salvar os eventos no seu calendário pessoal
  (Google Calendar). A classificação entre próximos e passados é
  automática com base na data atual.
</p>

<div class="gallery-grid">
  <!-- Fotos de eventos recentes serão adicionadas aqui.
       Exemplo:
       <div class="gallery-item">
         <img src="/assets/images/evento1.jpg" alt="Evento recente">
         <p class="gallery-caption">Evento recente</p>
       </div>
  -->
</div>

{% assign now = site.time | date: "%Y-%m-%d" %}

<h2>Próximos Eventos</h2>

<div class="events-list">
  {% assign upcoming_events = site.data.eventos | where_exp: "evento", "evento.data > now" %}
  {% if upcoming_events.size > 0 %}
    {% for evento in upcoming_events %}
    <div class="event-item">
      <div class="event-header">
        <div>
          <h3 class="event-title">{{ evento.nome }}</h3>
          <p class="event-location">{{ evento.local }}</p>
        </div>
        <div class="event-date">
          {% if evento.data_fim and evento.data_fim != evento.data %}
            {{ evento.data | date: "%d/%m/%Y" }} — {{ evento.data_fim | date: "%d/%m/%Y" }}
          {% else %}
            {{ evento.data | date: "%d/%m/%Y" }}
          {% endif %}
        </div>
      </div>

      <p class="event-description">{{ evento.descricao }}</p>

      <div class="event-links">
        {% if evento.link_calendario and evento.link_calendario != "" %}
          <a href="{{ evento.link_calendario }}" class="event-link" target="_blank" rel="noopener">
            📅 Salvar no calendário
          </a>
        {% endif %}
        {% if evento.fotos and evento.fotos != "" %}
          <a href="{{ evento.fotos }}" class="event-link" target="_blank" rel="noopener">
            Fotos
          </a>
        {% endif %}
        {% if evento.videos and evento.videos != "" %}
          <a href="{{ evento.videos }}" class="event-link" target="_blank" rel="noopener">
            Vídeos
          </a>
        {% endif %}
      </div>
    </div>
    {% endfor %}
  {% else %}
    <p>Nenhum evento próximo no momento. Fique atento às nossas redes sociais!</p>
  {% endif %}
</div>

<h2>Eventos Passados</h2>

<div class="events-list">
  {% assign past_events = site.data.eventos | where_exp: "evento", "evento.data <= now" %}
  {% for evento in past_events %}
  <div class="event-item passado">
    <div class="event-header">
      <div>
        <h3 class="event-title">{{ evento.nome }}</h3>
        <p class="event-location">{{ evento.local }}</p>
      </div>
      <div class="event-date">
        {% if evento.data_fim and evento.data_fim != evento.data %}
          {{ evento.data | date: "%d/%m/%Y" }} — {{ evento.data_fim | date: "%d/%m/%Y" }}
        {% else %}
          {{ evento.data | date: "%d/%m/%Y" }}
        {% endif %}
      </div>
    </div>

    <p class="event-description">{{ evento.descricao }}</p>

    <div class="event-links">
      {% if evento.pagina and evento.pagina != "" %}
        <a href="{{ evento.pagina | relative_url }}" class="event-link">
          Ver página do evento
        </a>
      {% endif %}
      {% if evento.fotos and evento.fotos != "" %}
        <a href="{{ evento.fotos }}" class="event-link" target="_blank" rel="noopener">
          Fotos
        </a>
      {% endif %}
      {% if evento.videos and evento.videos != "" %}
        <a href="{{ evento.videos }}" class="event-link" target="_blank" rel="noopener">
          Vídeos
        </a>
      {% endif %}
    </div>
  </div>
  {% endfor %}
</div>
