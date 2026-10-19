# Plugin para expor eventos futuros no site
Jekyll::Hooks.register :site, :post_read do |site|
  if site.data['eventos']
    today = Date.today.to_s
    site.config['eventos_futuros'] = site.data['eventos']
      .select { |e| e['data'] && e['data'] > today }
      .sort_by { |e| e['data'] }
  end
end
