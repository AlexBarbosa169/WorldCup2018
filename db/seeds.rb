# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


torneios = Tournament.create(titulo: 'World Cup 2018', pais: 'Russia',descricao: 'A Copa do Mundo FIFA de 2018 foi a vigésima primeira edição deste evento esportivo, um torneio internacional de futebol masculino organizado pela FIFA, que ocorreu na Rússia.', data: nil?)

Tournament.first.groups << Group.new(grupo: 'A')
Tournament.first.groups << Group.new(grupo: 'B')
Tournament.first.groups << Group.new(grupo: 'C')
Tournament.first.groups << Group.new(grupo: 'D')
Tournament.first.groups << Group.new(grupo: 'E')
Tournament.first.groups << Group.new(grupo: 'F')
Tournament.first.groups << Group.new(grupo: 'G')
Tournament.first.groups << Group.new(grupo: 'H')

Tournament.first.playoffs << Playoff.new(fase: 'Oitavas de Final')
Tournament.first.playoffs << Playoff.new(fase: 'Quartas de Final')
Tournament.first.playoffs << Playoff.new(fase: 'Semi Final')
Tournament.first.playoffs << Playoff.new(fase: 'Final')

Group.find(1).teams << Team.new(pais:'Rússia', urlBandeira: 'russia')
Group.find(1).teams << Team.new(pais:'Uruguai', urlBandeira: 'uruguai')
Group.find(1).teams << Team.new(pais:'Arábia Saudita', urlBandeira: 'arabia_saudita')
Group.find(1).teams << Team.new(pais:'Egito', urlBandeira: 'egito')

Group.find(2).teams << Team.new(pais:'Espanha', urlBandeira: 'spain')
Group.find(2).teams << Team.new(pais:'Portugal', urlBandeira: 'portugal')
Group.find(2).teams << Team.new(pais:'Irã', urlBandeira: 'ira')
Group.find(2).teams << Team.new(pais:'Marrocos', urlBandeira: 'marrocos')

Group.find(3).teams << Team.new(pais:'França', urlBandeira: 'franca')
Group.find(3).teams << Team.new(pais:'Dinamarca', urlBandeira: 'dinamarca')
Group.find(3).teams << Team.new(pais:'Perú', urlBandeira: 'peru')
Group.find(3).teams << Team.new(pais:'Austrália', urlBandeira: 'australia')

Group.find(4).teams << Team.new(pais:'Croácia', urlBandeira: 'croacia')
Group.find(4).teams << Team.new(pais:'Argentina', urlBandeira: 'argentina')
Group.find(4).teams << Team.new(pais:'Nigéria', urlBandeira: 'nigeria')
Group.find(4).teams << Team.new(pais:'Islândia', urlBandeira: 'islandia')

Group.find(5).teams << Team.new(pais:'Brasil', urlBandeira: 'brasil')
Group.find(5).teams << Team.new(pais:'Suíça', urlBandeira: 'suica')
Group.find(5).teams << Team.new(pais:'Sérvia', urlBandeira: 'servia')
Group.find(5).teams << Team.new(pais:'Costa Rica', urlBandeira: 'costa_rica')

Group.find(6).teams << Team.new(pais:'Suécia', urlBandeira: 'suecia')
Group.find(6).teams << Team.new(pais:'México', urlBandeira: 'mexico')
Group.find(6).teams << Team.new(pais:'Coréia do Sul', urlBandeira: 'coreia_do_sul')
Group.find(6).teams << Team.new(pais:'Alemanha', urlBandeira: 'alemanha')

Group.find(7).teams << Team.new(pais:'Bélgica', urlBandeira: 'belgica')
Group.find(7).teams << Team.new(pais:'Inglaterra', urlBandeira: 'inglaterra')
Group.find(7).teams << Team.new(pais:'Tunísia', urlBandeira: 'tunisia')
Group.find(7).teams << Team.new(pais:'Panamá', urlBandeira: 'panama')

Group.find(8).teams << Team.new(pais:'Colombia', urlBandeira: 'colombia')
Group.find(8).teams << Team.new(pais:'Japão', urlBandeira: 'japao')
Group.find(8).teams << Team.new(pais:'Senegal', urlBandeira: 'senegal')
Group.find(8).teams << Team.new(pais:'Polónia', urlBandeira: 'polonia')

for i in 1 .. 8 
	for j in 1..6
		Group.find(i).partidas << Partida.new(numero: j)
	end
end

for i in 1 .. 8
	Playoff.find(1).partidas << Partida.new(numero: i)
end

for i in 1 .. 4
	Playoff.find(2).partidas << Partida.new(numero: i)
end

for i in 1 .. 2
	Playoff.find(3).partidas << Partida.new(numero: i)
end


Playoff.find(4).partidas << Partida.new(numero: i)

#Partidas do grupo A

Group.find(1).partidas.find(1).teams << Team.where(pais: 'Rússia')
Group.find(1).partidas.find(1).teams << Team.where(pais: 'Arábia Saudita')
Group.first.partidas.find(1).update(resultado: "5 – 0")
Group.first.partidas.find(1).update(data: "2018-6-14")

Group.find(1).partidas.find(2).teams << Team.where(pais: 'Egito')
Group.find(1).partidas.find(2).teams << Team.where(pais: 'Uruguai')
Group.find(1).partidas.find(2).update(resultado: "0 – 1")
Group.find(1).partidas.find(2).update(data: "2018-6-14")

Group.find(1).partidas.find(3).teams << Team.where(pais: 'Rússia')
Group.find(1).partidas.find(3).teams << Team.where(pais: 'Egito')
Group.find(1).partidas.find(3).update(resultado: "3 – 1")
Group.find(1).partidas.find(3).update(data: "2018-6-19")

Group.find(1).partidas.find(4).teams << Team.where(pais: 'Uruguai')
Group.find(1).partidas.find(4).teams << Team.where(pais: 'Arábia Saudita')
Group.find(1).partidas.find(4).update(resultado: "1 – 0")
Group.find(1).partidas.find(4).update(data: "2018-6-20")

Group.find(1).partidas.find(5).teams << Team.where(pais: 'Uruguai')
Group.find(1).partidas.find(5).teams << Team.where(pais: 'Rússia')
Group.find(1).partidas.find(5).update(resultado: "3 – 0")
Group.find(1).partidas.find(5).update(data: "2018-6-25")

Group.find(1).partidas.find(6).teams << Team.where(pais: 'Arábia Saudita')
Group.find(1).partidas.find(6).teams << Team.where(pais: 'Egito')
Group.find(1).partidas.find(6).update(resultado: "2 – 1")
Group.find(1).partidas.find(6).update(data: "2018-6-25")

#Partidas do grupo B

Group.find(2).partidas.find(7).teams << Team.where(pais: 'Marrocos')
Group.find(2).partidas.find(7).teams << Team.where(pais: 'Irã')
Group.find(2).partidas.find(7).update(resultado: "0 – 1")
Group.find(2).partidas.find(7).update(data: "2018-6-15")

Group.find(2).partidas.find(8).teams << Team.where(pais: 'Portugal')
Group.find(2).partidas.find(8).teams << Team.where(pais: 'Espanha')
Group.find(2).partidas.find(8).update(resultado: "3 – 3")
Group.find(2).partidas.find(8).update(data: "2018-6-15")

Group.find(2).partidas.find(9).teams << Team.where(pais: 'Portugal')
Group.find(2).partidas.find(9).teams << Team.where(pais: 'Marrocos')
Group.find(2).partidas.find(9).update(resultado: "1 – 0")
Group.find(2).partidas.find(9).update(data: "2018-6-20")

Group.find(2).partidas.find(10).teams << Team.where(pais: 'Irã')
Group.find(2).partidas.find(10).teams << Team.where(pais: 'Espanha')
Group.find(2).partidas.find(10).update(resultado: "0 – 1")
Group.find(2).partidas.find(10).update(data: "2018-6-20")

Group.find(2).partidas.find(11).teams << Team.where(pais: 'Irã')
Group.find(2).partidas.find(11).teams << Team.where(pais: 'Portugal')
Group.find(2).partidas.find(11).update(resultado: "1 – 1")
Group.find(2).partidas.find(11).update(data: "2018-6-25")

Group.find(2).partidas.find(12).teams << Team.where(pais: 'Espanha')
Group.find(2).partidas.find(12).teams << Team.where(pais: 'Marrocos')
Group.find(2).partidas.find(12).update(resultado: "2 – 2")
Group.find(2).partidas.find(12).update(data: "2018-6-25")

#Partidas do grupo C

Group.find(3).partidas.find(13).teams << Team.where(pais: 'França')
Group.find(3).partidas.find(13).teams << Team.where(pais: 'Austrália')
Group.find(3).partidas.find(13).update(resultado: "2 – 1")
Group.find(3).partidas.find(13).update(data: "2018-6-15")

Group.find(3).partidas.find(14).teams << Team.where(pais: 'Peru')
Group.find(3).partidas.find(14).teams << Team.where(pais: 'Dinamarca')
Group.find(3).partidas.find(14).update(resultado: "0 – 1")
Group.find(3).partidas.find(14).update(data: "2018-6-15")

Group.find(3).partidas.find(15).teams << Team.where(pais: 'Dinamarca')
Group.find(3).partidas.find(15).teams << Team.where(pais: 'Austrália')
Group.find(3).partidas.find(15).update(resultado: "1 – 1")
Group.find(3).partidas.find(15).update(data: "2018-6-20")

Group.find(3).partidas.find(16).teams << Team.where(pais: 'França')
Group.find(3).partidas.find(16).teams << Team.where(pais: 'Peru')
Group.find(3).partidas.find(16).update(resultado: "1 – 0")
Group.find(3).partidas.find(16).update(data: "2018-6-20")

Group.find(3).partidas.find(17).teams << Team.where(pais: 'Dinamarca')
Group.find(3).partidas.find(17).teams << Team.where(pais: 'França')
Group.find(3).partidas.find(17).update(resultado: "0 – 0")
Group.find(3).partidas.find(17).update(data: "2018-6-25")

Group.find(3).partidas.find(18).teams << Team.where(pais: 'Austrália')
Group.find(3).partidas.find(18).teams << Team.where(pais: 'Perú')
Group.find(3).partidas.find(18).update(resultado: "0 – 2")
Group.find(3).partidas.find(18).update(data: "2018-6-25")

#Partidas do Grupo D

Group.find(4).partidas.find(19).teams << Team.where(pais: 'Argentina')
Group.find(4).partidas.find(19).teams << Team.where(pais: 'Islândia')
Group.find(4).partidas.find(19).update(resultado: "1 – 1")
Group.find(4).partidas.find(19).update(data: "2018-6-16")

Group.find(4).partidas.find(20).teams << Team.where(pais: 'Croácia')
Group.find(4).partidas.find(20).teams << Team.where(pais: 'Nigéria')
Group.find(4).partidas.find(20).update(resultado: "2 – 0")
Group.find(4).partidas.find(20).update(data: "2018-6-16")

Group.find(4).partidas.find(21).teams << Team.where(pais: 'Argentina')
Group.find(4).partidas.find(21).teams << Team.where(pais: 'Croácia')
Group.find(4).partidas.find(21).update(resultado: "0 – 3")
Group.find(4).partidas.find(21).update(data: "2018-6-21")

Group.find(4).partidas.find(22).teams << Team.where(pais: 'Nigéria')
Group.find(4).partidas.find(22).teams << Team.where(pais: 'Islândia')
Group.find(4).partidas.find(22).update(resultado: "2 – 0")
Group.find(4).partidas.find(22).update(data: "2018-6-22")

Group.find(4).partidas.find(23).teams << Team.where(pais: 'Nigéria')
Group.find(4).partidas.find(23).teams << Team.where(pais: 'Argentina')
Group.find(4).partidas.find(23).update(resultado: "1 – 2")
Group.find(4).partidas.find(23).update(data: "2018-6-26")

Group.find(4).partidas.find(24).teams << Team.where(pais: 'Islândia')
Group.find(4).partidas.find(24).teams << Team.where(pais: 'Croácia')
Group.find(4).partidas.find(24).update(resultado: "1 – 2")
Group.find(4).partidas.find(24).update(data: "2018-6-26")

#Partidas do Grupo E

Group.find(5).partidas.find(25).teams << Team.where(pais: 'Costa Rica')
Group.find(5).partidas.find(25).teams << Team.where(pais: 'Sérvia')
Group.find(5).partidas.find(25).update(resultado: "0 – 1")
Group.find(5).partidas.find(25).update(data: "2018-6-17")

Group.find(5).partidas.find(26).teams << Team.where(pais: 'Brasil')
Group.find(5).partidas.find(26).teams << Team.where(pais: 'Suíça')
Group.find(5).partidas.find(26).update(resultado: "1 – 1")
Group.find(5).partidas.find(26).update(data: "2018-6-17")

Group.find(5).partidas.find(27).teams << Team.where(pais: 'Brasil')
Group.find(5).partidas.find(27).teams << Team.where(pais: 'Costa Rica')
Group.find(5).partidas.find(27).update(resultado: "2 – 0")
Group.find(5).partidas.find(27).update(data: "2018-6-22")

Group.find(5).partidas.find(28).teams << Team.where(pais: 'Sérvia')
Group.find(5).partidas.find(28).teams << Team.where(pais: 'Suíça')
Group.find(5).partidas.find(28).update(resultado: "1 – 2")
Group.find(5).partidas.find(28).update(data: "2018-6-22")

Group.find(5).partidas.find(29).teams << Team.where(pais: 'Sérvia')
Group.find(5).partidas.find(29).teams << Team.where(pais: 'Brasil')
Group.find(5).partidas.find(29).update(resultado: "0 – 2")
Group.find(5).partidas.find(29).update(data: "2018-6-27")

Group.find(5).partidas.find(30).teams << Team.where(pais: 'Suíça')
Group.find(5).partidas.find(30).teams << Team.where(pais: 'Costa Rica')
Group.find(5).partidas.find(30).update(resultado: "2 – 2")
Group.find(5).partidas.find(30).update(data: "2018-6-27")

#Partidas do grupo F

Group.find(6).partidas.find(31).teams << Team.where(pais: 'Alemanha')
Group.find(6).partidas.find(31).teams << Team.where(pais: 'México')
Group.find(6).partidas.find(31).update(resultado: "0 – 1")
Group.find(6).partidas.find(31).update(data: "2018-6-17")

Group.find(6).partidas.find(32).teams << Team.where(pais: 'Suécia')
Group.find(6).partidas.find(32).teams << Team.where(pais: 'Coréia do Sul')
Group.find(6).partidas.find(32).update(resultado: "1 – 0")
Group.find(6).partidas.find(32).update(data: "2018-6-18")

Group.find(6).partidas.find(33).teams << Team.where(pais: 'Coréia do Sul')
Group.find(6).partidas.find(33).teams << Team.where(pais: 'México')
Group.find(6).partidas.find(33).update(resultado: "1 – 2")
Group.find(6).partidas.find(33).update(data: "2018-6-23")

Group.find(6).partidas.find(34).teams << Team.where(pais: 'Alemanha')
Group.find(6).partidas.find(34).teams << Team.where(pais: 'Suécia')
Group.find(6).partidas.find(34).update(resultado: "2 – 1")
Group.find(6).partidas.find(34).update(data: "2018-6-23")

Group.find(6).partidas.find(35).teams << Team.where(pais: 'México')
Group.find(6).partidas.find(35).teams << Team.where(pais: 'Suécia')
Group.find(6).partidas.find(35).update(resultado: "0 – 3")
Group.find(6).partidas.find(35).update(data: "2018-6-27")

Group.find(6).partidas.find(36).teams << Team.where(pais: 'Coréia do Sul')
Group.find(6).partidas.find(36).teams << Team.where(pais: 'Alemanha')
Group.find(6).partidas.find(36).update(resultado: "2 – 0")
Group.find(6).partidas.find(36).update(data: "2018-6-27")

# Partidas do Grupo G

Group.find(7).partidas.find(37).teams << Team.where(pais: 'Bélgica')
Group.find(7).partidas.find(37).teams << Team.where(pais: 'Panamá')
Group.find(7).partidas.find(37).update(resultado: "3 – 0")
Group.find(7).partidas.find(37).update(data: "2018-6-18")

Group.find(7).partidas.find(38).teams << Team.where(pais: 'Tunísia')
Group.find(7).partidas.find(38).teams << Team.where(pais: 'Inglaterra')
Group.find(7).partidas.find(38).update(resultado: "1 – 2")
Group.find(7).partidas.find(38).update(data: "2018-6-18")

Group.find(7).partidas.find(39).teams << Team.where(pais: 'Bélgica')
Group.find(7).partidas.find(39).teams << Team.where(pais: 'Tunísia')
Group.find(7).partidas.find(39).update(resultado: "5 – 2")
Group.find(7).partidas.find(39).update(data: "2018-6-23")

Group.find(7).partidas.find(40).teams << Team.where(pais: 'Inglaterra')
Group.find(7).partidas.find(40).teams << Team.where(pais: 'Panamá')
Group.find(7).partidas.find(40).update(resultado: "6 – 1")
Group.find(7).partidas.find(40).update(data: "2018-6-24")

Group.find(7).partidas.find(41).teams << Team.where(pais: 'Inglaterra')
Group.find(7).partidas.find(41).teams << Team.where(pais: 'Bélgica')
Group.find(7).partidas.find(41).update(resultado: "0 – 1")
Group.find(7).partidas.find(41).update(data: "2018-6-28")

Group.find(7).partidas.find(42).teams << Team.where(pais: 'Panamá')
Group.find(7).partidas.find(42).teams << Team.where(pais: 'Tunísia')
Group.find(7).partidas.find(42).update(resultado: "1 – 2")
Group.find(7).partidas.find(42).update(data: "2018-6-28")

#Partidas do Grupo H

Group.find(8).partidas.find(43).teams << Team.where(pais: 'Colombia')
Group.find(8).partidas.find(43).teams << Team.where(pais: 'Japão')
Group.find(8).partidas.find(43).update(resultado: "1 – 2")
Group.find(8).partidas.find(43).update(data: "2018-6-19")

Group.find(8).partidas.find(44).teams << Team.where(pais: 'Polónia')
Group.find(8).partidas.find(44).teams << Team.where(pais: 'Senegal')
Group.find(8).partidas.find(44).update(resultado: "1 – 2")
Group.find(8).partidas.find(44).update(data: "2018-6-19")

Group.find(8).partidas.find(45).teams << Team.where(pais: 'Japão')
Group.find(8).partidas.find(45).teams << Team.where(pais: 'Senegal')
Group.find(8).partidas.find(45).update(resultado: "2 – 2")
Group.find(8).partidas.find(45).update(data: "2018-6-24")

Group.find(8).partidas.find(46).teams << Team.where(pais: 'Polónia')
Group.find(8).partidas.find(46).teams << Team.where(pais: 'Colombia')
Group.find(8).partidas.find(46).update(resultado: "0 – 3")
Group.find(8).partidas.find(46).update(data: "2018-6-24")

Group.find(8).partidas.find(47).teams << Team.where(pais: 'Senegal')
Group.find(8).partidas.find(47).teams << Team.where(pais: 'Colombia')
Group.find(8).partidas.find(47).update(resultado: "0 – 1")
Group.find(8).partidas.find(47).update(data: "2018-6-28")

Group.find(8).partidas.find(48).teams << Team.where(pais: 'Japão')
Group.find(8).partidas.find(48).teams << Team.where(pais: 'Polónia')
Group.find(8).partidas.find(48).update(resultado: "0 – 1")
Group.find(8).partidas.find(48).update(data: "2018-6-28")

# Oitavas de Final

Playoff.find(1).partidas.find(49).teams << Team.where(pais: 'França')
Playoff.find(1).partidas.find(49).teams << Team.where(pais: 'Argentina')
Playoff.find(1).partidas.find(49).update(resultado: "4 – 3")

Playoff.find(1).partidas.find(50).teams << Team.where(pais: 'Uruguai')
Playoff.find(1).partidas.find(50).teams << Team.where(pais: 'Portugal')
Playoff.find(1).partidas.find(50).update(resultado: "2 – 1")

Playoff.find(1).partidas.find(51).teams << Team.where(pais: 'Espanha')
Playoff.find(1).partidas.find(51).teams << Team.where(pais: 'Rússia')
Playoff.find(1).partidas.find(51).update(resultado: "(4) 1 – 1 (3)")

Playoff.find(1).partidas.find(52).teams << Team.where(pais: 'Croácia')
Playoff.find(1).partidas.find(52).teams << Team.where(pais: 'Dinamarca')
Playoff.find(1).partidas.find(52).update(resultado: "(2) 1 – 1 (3)")

Playoff.find(1).partidas.find(53).teams << Team.where(pais: 'Brasil')
Playoff.find(1).partidas.find(53).teams << Team.where(pais: 'México')
Playoff.find(1).partidas.find(53).update(resultado: "2 – 0")

Playoff.find(1).partidas.find(54).teams << Team.where(pais: 'Bélgica')
Playoff.find(1).partidas.find(54).teams << Team.where(pais: 'Japão')
Playoff.find(1).partidas.find(54).update(resultado: "3 – 2")

Playoff.find(1).partidas.find(55).teams << Team.where(pais: 'Suécia')
Playoff.find(1).partidas.find(55).teams << Team.where(pais: 'Suíça')
Playoff.find(1).partidas.find(55).update(resultado: "1 – 0")

Playoff.find(1).partidas.find(56).teams << Team.where(pais: 'Colombia')
Playoff.find(1).partidas.find(56).teams << Team.where(pais: 'Inglaterra')
Playoff.find(1).partidas.find(56).update(resultado: "1 – 1")

# Quartas de Final

Playoff.find(2).partidas.find(57).teams << Team.where(pais: 'Uruguai')
Playoff.find(2).partidas.find(57).teams << Team.where(pais: 'França')
Playoff.find(2).partidas.find(57).update(resultado: "0 – 2")

Playoff.find(2).partidas.find(58).teams << Team.where(pais: 'Brasil')
Playoff.find(2).partidas.find(58).teams << Team.where(pais: 'Bélgica')
Playoff.find(2).partidas.find(58).update(resultado: "1 – 2")

Playoff.find(2).partidas.find(59).teams << Team.where(pais: 'Suécia')
Playoff.find(2).partidas.find(59).teams << Team.where(pais: 'Inglaterra')
Playoff.find(2).partidas.find(59).update(resultado: "0 – 2")

Playoff.find(2).partidas.find(60).teams << Team.where(pais: 'Rússia')
Playoff.find(2).partidas.find(60).teams << Team.where(pais: 'Croácia')
Playoff.find(2).partidas.find(60).update(resultado: "(3) 2 – 2 (4)")

# Semi Finais

Playoff.find(3).partidas.find(61).teams << Team.where(pais: 'Croácia')
Playoff.find(3).partidas.find(61).teams << Team.where(pais: 'Inglaterra')
Playoff.find(3).partidas.find(61).update(resultado: "2 – 1")

Playoff.find(3).partidas.find(62).teams << Team.where(pais: 'Bélgica')
Playoff.find(3).partidas.find(62).teams << Team.where(pais: 'Inglaterra')
Playoff.find(3).partidas.find(62).update(resultado: "2 – 0")

# Final

Playoff.find(4).partidas.find(63).teams << Team.where(pais: 'França')
Playoff.find(4).partidas.find(63).teams << Team.where(pais: 'Bélgica')
Playoff.find(4).partidas.find(63).update(resultado: "4 – 2")

# Players

Player.create(nome: "Igor Akinfeev",numero: 1, nacionalidade: "Rússia", urlImagem: "russia_player", 
	descricao: "Goleiro que atua no CSKA Moscou é a grande promessa da Rússia para a Copa. Apesar das desconfianças dos torcedores em função dos muitos gols sofridos nas últimas edições da Champions League, a esperança russa é de que o goleiro reencontre sua melhor forma e ajude a seleção a fazer história: vencer a competição em casa.", 
	team_id: 1)

Player.create(nome: "Al Shehri",numero: 1, nacionalidade: "Arábia Saudita", urlImagem: "arabia_player", 
	descricao: "A aposta da Arábia Saudita na Copa vem do meio de campo: o jogador Al Shehri. Apesar desse e de outros jogadores habilidosos, a seleção vive a crise dos técnicos, que já foram trocados duas vezes depois que a equipe garantiu a classificação para o mundial.", 
	team_id: 3)

Player.create(nome: "Mohamed Salah",numero: 1, nacionalidade: "Egito", urlImagem: "egito_player", 
	descricao: "Se há uma esperança para o Egito nesse mundial ela tem um nome: Mohamed Salah. O jogador atua no futebol europeu e está em grande fase. Ajudar a equipe a avançar na Copa seria histórico, já que a melhor campanha do Egito foi em 1934, quando chegou às oitavas de final.", 
	team_id: 4)

Player.create(nome: "Luis Suárez",numero: 1, nacionalidade: "Uruguai", urlImagem: "uruguai_player", 
	descricao: "Atacante que atua no Barcelona é o grande nome do Uruguai para a Copa de 2018. Experiente, ele já vestiu a camisa da seleção nos mundiais em 2010 e 2014. Desde 1950 os uruguaios não vencem uma Copa do Mundo. Será que o jejum de tantos anos vai ser quebrado com atuação inspirada de Suárez?", 
	team_id: 2)

Player.create(nome: "Lionel Messi",numero: 10, nacionalidade: "Argentina", urlImagem: "argentina_player", 
	descricao: "Vice-campeã mundial na Copa de 2014, a Argentina vem com sangue nos olhos para tentar o terceiro título de sua história. Messi é, sem dúvida, o jogador que vai liderar a equipe na briga rumo ao tão sonhado troféu.", 
	team_id: 14)

Player.create(nome: "Cristiano Ronaldo",numero: 7, nacionalidade: "Portugal", urlImagem: "portugal_player", 
	descricao: "Craque do Real Madrid dispensa apresentações e foi eleito melhor jogador do mundo pela FIFA em 2008, 2016 e 2017. A melhor campanha de Portugal em Copas do Mundo foi um terceiro lugar em 1966. Será que a equipe vai chegar mais longe nesse mundial da Rússia?", 
	team_id: 6)

Player.create(nome: "Andrés Iniesta",numero: 7, nacionalidade: "Espanha", urlImagem: "espanha_player", 
	descricao: "Estrela do Barcelona, meio de campo é destaque da Espanha, que chega a Copa do Mundo da Rússia como uma das grandes favoritas ao título. A seleção espanhola foi campeã mundial pela primeira e única vez em 2010.", 
	team_id: 5)

Player.create(nome: "Mehdi Benatia",numero: 7, nacionalidade: "Marrocos", urlImagem: "marrocos_player", 
	descricao: "Se muitos times têm sua grande estrela no ataque, para o Marrocos a chave do sucesso na Copa do Mundo pode estar no sistema defensivo. O zagueiro que joga no Juventus é destaque da seleção que tenta chegar pela primeira nas fases finais da competição.", 
	team_id: 8)

Player.create(nome: "Sardar Azmoun",numero: 7, nacionalidade: "Irã", urlImagem: "ira_player", 
	descricao: "Apesar de não fazer parte do hall das seleções mais tradicionais do torneio, o Irã é um daqueles times aguerridos que podem surpreender com bons resultados na Copa do Mundo. O ataque, liderado por Azmoun, pode fazer a diferença.", 
	team_id: 7)

Player.create(nome: "Antoine Griezmann",numero: 7, nacionalidade: "França", urlImagem: "franca_player", 
	descricao: "Atacante que atua no Atlético de Madrid aparece como promessa dessa seleção francesa que é bastante habilidosa tanto na defesa quanto no meio-de-campo.", 
	team_id: 9)

Player.create(nome: "Tim Cahill",numero: 7, nacionalidade: "Austrália", urlImagem: "australia_player", 
	descricao: "Atacante que atua no Atlético de Madrid aparece como promessa dessa seleção francesa que é bastante habilidosa tanto na defesa quanto no meio-de-campo.", 
	team_id: 12)

Player.create(nome: "Paolo Guerrero",numero: 7, nacionalidade: "Perú", urlImagem: "peru_player", 
	descricao: "Atacante é o destaque da seleção do Peru, que está de volta a uma edição da Copa do Mundo depois de 36 anos sem conseguir a classificação. Imagina se, de quebra, o Peru consegue o feito de ir às fases finais na luta pelo título?", 
	team_id: 11)

Player.create(nome: "Christian Eriksen",numero: 7, nacionalidade: "Dinamarca", urlImagem: "dinamarca_player", 
	descricao: "Estrela absoluta do futebol dinamarquês, fica com o meio-de-campo Eriksen a responsabilidade de embalar sua seleção na luta pelo título. A Dinamarca não disputou a última Copa realizada no Brasil em 2014. Esse ano vem com tudo para se firmar como as principais equipes da competição.", 
	team_id: 10)

Player.create(nome: "Gylfi Sigurdsson",numero: 7, nacionalidade: "Islândia", urlImagem: "islandia_player", 
	descricao: "O meio-de-campo é um dos principais destaques dessa seleção que vai fazer sua estreia em Copas do Mundo na Rússia. E como dizem que, muitas vezes, uma conquista pode ser “sorte de principiante”, será que a Islândia vai surpreender no mundial?", 
	team_id: 16)

Player.create(nome: "Luka Modrić",numero: 7, nacionalidade: "Croácia", urlImagem: "croacia_player", 
	descricao: "Parte do time de estrelas do Real Madrid, Modrić vem liderando a seleção croata, cujo melhor resultado foi um terceiro lugar histórico na Copa de 1998. Equipe tem grandes chances de avançar às oitavas-de-final.", 
	team_id: 13)

Player.create(nome: "Obi Mikel",numero: 7, nacionalidade: "Nigéria", urlImagem: "nigeria_player", 
	descricao: "A equipe já disputou cinco mundiais. Será que Obi Mikel, destaque da seleção, vai ajudar a Nigéria a chegar mais longe nessa copa?", 
	team_id: 15)

Player.create(nome: "Neymar",numero: 7, nacionalidade: "Brasil", urlImagem: "brasil_player", 
	descricao: "Que Neymar é uma grande promessa para a Copa da Rússia é fato! A pergunta que ninguém sabe responder é como ele estará fisicamente na competição, já que se machucou recentemente. Será que Neymar vai conduzir o Brasil ao sexto título de sua história em mundiais?", 
	team_id: 17)

Player.create(nome: "Xherdan Shaqiri",numero: 7, nacionalidade: "Suiça", urlImagem: "suica_player", 
	descricao: "O meio-de-campo suíço que já teve passagens pelo Basel, Bayern de Munique e – atualmente - é do elenco do Stoke City da Inglaterra. A Suíça é sempre um adversário de respeito em Copas do Mundo, mas será que Shaqiri e companhia farão a equipe avançar às fases finais do torneio?", 
	team_id: 18)

Player.create(nome: "Keylor Navas",numero: 7, nacionalidade: "Costa Rica", urlImagem: "costa_player", 
	descricao: "Em 2014 a Costa Rica fez história ao vencer o Uruguai e a Itália. Será que sob comando do goleiro Navas, a seleção vai avançar à fase final na Rússia?", 
	team_id: 20)

Player.create(nome: "Nemanja Matić",numero: 7, nacionalidade: "Sérvia", urlImagem: "servia_player", 
	descricao: "Atualmente o jogador defende o Manchester United e vai ter a missão de encabeçar a equipe da Sérvia na Copa de 2018.", 
	team_id: 19)

Player.create(nome: "Toni Kroos",numero: 7, nacionalidade: "Alemanha", urlImagem: "alemanha_player", 
	descricao: "O meio-de-campo do Real Madrid chega à Copa de 2018 com a importante missão de defender o título junto com a seleção alemã, atual campeã mundial.", 
	team_id: 24)

Player.create(nome: "Javier Hernández",numero: 7, nacionalidade: "México", urlImagem: "mexico_player", 
	descricao: "Na seleção mexicana o destaque fica por conta desse atacante, conhecido pela habilidade com ambas as pernas. México disputou 14 mundiais, já chegou às quartas-de-final, mas nunca venceu a competição. Será que é na Rússia?", 
	team_id: 22)

Player.create(nome: "Son Heung-min",numero: 7, nacionalidade: "Coréia do Sul", urlImagem: "coreia_player", 
	descricao: "O ponta esquerda joga pelo Tottenham e vem liderando a equipe coreana na briga pela classificação para a fase final. A Copa de 2002 foi histórica para a Coreia do Sul, já que a seleção eliminou a Itália nas oitavas de final e a Espanha nas quartas, terminando em 4º lugar. Será que vem mais vitórias frente às grandes potências do futebol por aí?", 
	team_id: 23)

Player.create(nome: "Kevin De Bruyne",numero: 7, nacionalidade: "Bélgica", urlImagem: "belgica_player", 
	descricao: "O destaque da equipe belga é o meio-de-campo que atua no Manchester City. A melhor campanha da Bélgica em Copas do Mundo foi um 4º lugar em 1986. Será que na Rússia ela vem com tudo para tentar o título?", 
	team_id: 25)

Player.create(nome: "Felipe Baloy",numero: 7, nacionalidade: "Panamá", urlImagem: "panama_player", 
	descricao: "O capitão da seleção tem a nada fácil missão de liderar a equipe na tentativa de uma classificação para as fases finais da Copa do Mundo. Panamá é estreante na competição.", 
	team_id: 28)

Player.create(nome: "Wahbi Khazri",numero: 7, nacionalidade: "Tunísia", urlImagem: "tunisia_player", 
	descricao: "O destaque da Tunísia fica por conta do meio-de-campo Wahbi Khazri. Até hoje o maior feito da seleção em mundiais foi uma vitória por 3x1 sobre o México em 1978.", 
	team_id: 27)

Player.create(nome: "Harry Kane",numero: 7, nacionalidade: "Inglaterra", urlImagem: "inglatera_player", 
	descricao: "O atacante do Tottenham é a promessa inglesa para a Copa do Mundo. A Ingleterra conquistou o título mundial em 1966. Será que Kane vai ajudar a acabar com um jejum de tantos anos?", 
	team_id: 26)

Player.create(nome: "Robert Lewandowski",numero: 7, nacionalidade: "Polónia", urlImagem: "polonia_player", 
	descricao: "O atacante polonês aparece como destaque na seleção que vai disputar a Copa da Rússia. O momento mais memorável da Polônia em mundiais foi a vitória sobre o Brasil em 1974 na disputa pelo 3º lugar.", 
	team_id: 32)

Player.create(nome: "Sadio Manè",numero: 7, nacionalidade: "Senegal", urlImagem: "senegal_player", 
	descricao: "O ponta-esquerda do Liverpool lidera a equipe senegalesa que disputou apenas uma Copa do Mundo até hoje: a de 2002, quando conseguiu uma improvável vitória sobre a França na fase de grupos.", 
	team_id: 31)

Player.create(nome: "James Rodriguez",numero: 7, nacionalidade: "Colombia", urlImagem: "colombia_player", 
	descricao: "O atacante do Bayern é o craque da seleção colombiana que vem para a Copa da Rússia tentar o primeiro título de sua história.", 
	team_id: 29)

Player.create(nome: "Takuma Asano",numero: 7, nacionalidade: "Japão", urlImagem: "japao_player", 
	descricao: "O atacante do Sttuttgart vai embalar a seleção japonesa no Mundial da Rússia. Japão já disputou 5 mundiais, mas nunca foi campeão da competição.", 
	team_id: 30)
