# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ent=Entidad.find_or_create_by nombre:"Ciudad de Mexico"
t_d=TipoDano.find_or_create_by nombre:"Daño mayor"
del=Delegacion.find_or_create_by nombre:"Gustavo A. Madero", entidad:ent
r_d=ReporteDano.find_or_create_by tipo_dano:t_d,entidad_id:ent.id,delegacion_id:del.id,nombre_lugar:"Hotel costa Brav",descripcion:"Grietas y caida cascajo",calle:"norte 9-A",codigo_postal:93988,entre_calles:"ciutlahuac y poniente 106",colonia:"defensores de la republica",numero_exterior:4599,direccion_completa:"Norte 9-A 4599 defensores de la republica",personas_heridas_fallecidas:0,personas_afectadas:0,apoyo_necesario:"",informacion_contacto:"",informacion_extra:""
