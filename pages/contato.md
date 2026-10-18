---
layout: page
title: "Contato"
permalink: /contato/
---

<p>
  Entre em contato com a Associação Kobukai de Aikido. Estamos à disposição
  para tirar dúvidas sobre treinos, graduações e eventos.
</p>

<div class="contact-info">
  <div class="contact-item">
    <h3>Informações Gerais</h3>
    <p><strong>Responsável:</strong> {{ site.data.contato.nome }}</p>
    <p><strong>Cargo:</strong> {{ site.data.contato.cargo }}</p>

    {% if site.data.contato.telefone and site.data.contato.telefone != "" %}
    <p><strong>Telefone:</strong> {{ site.data.contato.telefone }}</p>
    {% endif %}

    {% if site.data.contato.email and site.data.contato.email != "" %}
    <p><strong>Email:</strong> <a href="mailto:{{ site.data.contato.email }}">{{ site.data.contato.email }}</a></p>
    {% endif %}

    {% if site.data.contato.instagram and site.data.contato.instagram != "" %}
    <p>
      <strong>Instagram:</strong>
      <a href="https://www.instagram.com/{{ site.data.contato.instagram | replace: '@', '' }}/" target="_blank">
        {{ site.data.contato.instagram }}
      </a>
    </p>
    {% endif %}
  </div>

  <div class="contact-item">
    <h3>Onde Treinar</h3>
    <p>
      Cada dojo possui seu próprio contato e horários de treinamento.
      Conheça nossos dojos afiliados e encontre o mais próximo de você.
    </p>
    <a href="{{ '/dojos/' | relative_url }}" class="hero-cta" style="margin-top:1rem;display:inline-block;">
      Ver Dojos
    </a>
  </div>

  <div class="contact-item">
    <h3>Redes Sociais</h3>
    <ul style="list-style:none;padding:0;">
      <li style="margin-bottom:0.5rem;">
        <a href="https://www.instagram.com/kobukaiaikido/" target="_blank">
          @kobukaiaikido
        </a>
      </li>
      <li style="margin-bottom:0.5rem;">
        <a href="https://www.instagram.com/aikidocaxiasdosul/" target="_blank">
          @aikidocaxiasdosul
        </a>
      </li>
      <li style="margin-bottom:0.5rem;">
        <a href="https://www.instagram.com/saoleopoldokobukai/" target="_blank">
          @saoleopoldokobukai
        </a>
      </li>
    </ul>
  </div>
</div>
