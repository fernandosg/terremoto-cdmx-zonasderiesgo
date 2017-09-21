Rails.application.routes.draw do
  get 'datos/obtener-entidades-delegaciones'=>"datos#obtener_entidades_delegaciones"
  get "datos/obtener-tipo-dano"=>"datos#obtener-tipo-dano"
  get "datos/obtener-informacion-formulario"=>"datos#obtener_informacion_formulario"

  resources :reporte_danos
  resources :ciudads
  resources :municipios

  match '*any' => 'application#options', :via => [:options]

  get "ciudads/entidad/:entidad_id"=>"ciudads#obtener_por_entidad"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/reporte_danos/delegacion/:delegacion_id"=>"reporte_danos#obtener_por_delegacion"
  get "/reporte_danos/dano/:tipo_dano_id"=>"reporte_danos#obtener_por_tipo_dano"
end
