##############################################################################
### Files and datasets for CORRELATES
##############################################################################
### These are revised datasets. Nov 2005 and Aug 2007
# Matrices with row and col names
# HR:  A=17, P= 16
hr_01b <-read.table("HR_01_bmatrix.txt",header=TRUE,sep="\t",dec=".",na.strings="NA")
hr_01p <-read.table("HR_01_plmatrix.txt",header=TRUE,sep="\t",dec=".",na.strings="NA")
hr_qb <-read.table("HR_quant_bmatrix.txt",header=TRUE,sep="\t",dec=".",na.strings="NA")
hr_qp <-read.table("HR_quant_plmatrix.txt",header=TRUE,sep="\t",dec=".",na.strings="NA")

# NCH: A=33, P= 25
nch_01b <-read.table("NCH_01_bmatrix.txt",header=TRUE,sep="\t",dec=".",na.strings="NA")
nch_01p<-read.table("NCH_01_plmatrix.txt",header=TRUE,sep="\t",dec=".",na.strings="NA")
nch_qb <-read.table("NCH_quant_bmatrix.txt",header=TRUE,sep="\t",dec=".",na.strings="NA")
nch_qp <-read.table("NCH_quant_plmatrix.txt",header=TRUE,sep="\t",dec=".",na.strings="NA")

zack_qa<-read.table("zack_2ndyr.txt",header=TRUE,sep="\t",dec=".",na.strings="NA")
zack_qp<-read.table("zack_2ndyr_pl.txt",header=TRUE,sep="\t",dec=".",na.strings="NA")

# Hato Raton faecal samples dataset
hr_defec <-read.table("Tr_hr_raref_final.txt",header=TRUE,sep="\t",dec=",")

#-----------------------------------------------------------------------------
# Matrices without row and col names
# For matrix initialization, first read the matrices without label columns and 
# without header. Then add labels with pp<-list(c(),c()) and dimnames(nchqmat)<-pp.
#
### NAVA CORREHUELAS
nchq<-as.matrix(read.table("nchq.txt",header=F,sep="\t",dec=".",na.strings="NA"))
pp1<-list(c("Turdus.viscivorus","Phoenicurus.ochruros","Turdus.merula","Fringilla.coelebs","Turdus.torquatus","Parus.ater","Turdus.iliacus","Erithacus.rubecula","Sylvia.atricapilla","Garrulus.glandarius","Sylvia.communis","Parus.major","Turdus.pilaris","Phoenicurus.phoenicurus","Coccothraustes.coccothraustes","Parus.cristatus","Sitta.europaea","Parus.caeruleus","Columba.palumbus","Sylvia.cantillans","Sylvia.melanocephala","Corvus.corone","Serinus.serinus","Pica.pica","Dendrocopos.major","Turdus.philomelos","Loxia.curvirostra","Sylvia.borin","Serinus.citinella","Sylvia.conspicillata","Corvus.corax","Ficedula.hypoleuca","Emberiza.cia"),c("Prunus.mahaleb","Crataegus.monogyna","Berberis.vulgaris","Juniperus.phoenicea","Taxus.baccata","Hedera.helix","Rosa.canina","Lonicera.arborea","Juniperus.sabina","Juniperus.communis","Rhamnus.saxatilis","Rhamnus.myrtifolius","Daphne.laureola","Sorbus.aria","Rubus.ulmifolius","Amelanchier.ovalis","Arum.italicum","Rubia.peregrina","Prunus.prostrata","Cotoneaster.granatensis","Juniperus.oxycedrus","Polygonatum.odoratum","Paeonia.officinalis","Lonicera.etrusca","Lonicera.splendida"))
dimnames(nchq)<-pp1


nch01<-as.matrix(read.table("nch01.txt",header=F,sep="\t",dec=".",na.strings="NA"))
pp<-list(c("Turdus merula","Turdus viscivorus","Erithacus rubecula","Turdus iliacus","Turdus torquatus","Phoenicurus ochruros","Sylvia atricapilla","Parus ater","Fringilla coelebs","Columba palumbus","Corvus corone","Parus major","Coccothraustes coccothraustes","Turdus pilaris","Phoenicurus phoenicurus","Sylvia communis","Turdus philomelos","Garrulus glandarius","Sitta europaea","Parus caeruleus","Ficedula hypoleuca","Pica pica","Sylvia conspicillata","Emberiza cia","Parus cristatus","Loxia curvirostra","Corvus corax","Dendrocopos major","Sylvia borin","Sylvia cantillans","Sylvia melanocephala","Serinus citinella","Serinus serinus"),c("Prunus mahaleb","Crataegus monogyna","Berberis vulgaris","Juniperus phoenicea","Lonicera arborea","Rubus ulmifolius","Rosa canina","Taxus baccata","Hedera helix","Juniperus communis","Juniperus sabina","Sorbus aria","Daphne laureola","Amelanchier ovalis","Rhamnus myrtifolius","Rhamnus saxatilis","Rubia peregrina","Arum italicum","Cotoneaster granatensis","Lonicera splendida","Prunus prostrata","Juniperus oxycedrus","Lonicera etrusca","Paeonia officinalis","Polygonatum odoratum"))
dimnames(nch01)<-pp

### HATO RATON
hr01<-as.matrix(read.table("hr01.txt",header=F,sep="\t",dec=".",na.strings="NA"))
pp2<-list(c("Sylvia atricapilla","Sylvia borin","Erithacus rubecula","Sylvia melanocephala","Turdus merula","Turdus philomelos","Sylvia communis","Sylvia hortensis","Sylvia cantillans","Ficedula hypoleuca","Phoenicurus phoenicurus","Sylvia undata","Saxicola torquata","Cyanopica cyanus","Luscinia megarhynchos","Muscicapa striata","Sturnus unicolor"),c("Pistacia lentiscus","Olea europaea","Phillyrea angustifolia","Rhamnus lycioides","Daphne gnidium","Myrtus communis","Rubia pregrina","Rubus ulmifolius","Smilax aspera","Asparagus aculeatus","Tamus communis","Pyrus bourgaeana","Lonicera periclymenum","Osyris alba","Crataegus monogyna","Asparagus aphyllus"))
dimnames(hr01)<-pp2

hrq<-as.matrix(read.table("hrq.txt",header=F,sep="\t",dec=".",na.strings="NA"))
pp3<-list(c("Sylvia atricapilla","Sylvia borin","Erithacus rubecula","Sylvia melanocephala","Turdus merula","Turdus philomelos","Sylvia communis","Sylvia hortensis","Sylvia cantillans","Ficedula hypoleuca","Phoenicurus phoenicurus","Sylvia undata","Saxicola torquata","Cyanopica cyanus","Luscinia megarhynchos","Muscicapa striata","Sturnus unicolor"),c("Pistacia lentiscus","Olea europaea","Phillyrea angustifolia","Rhamnus lycioides","Daphne gnidium","Myrtus communis","Rubia pregrina","Rubus ulmifolius","Smilax aspera","Asparagus aculeatus","Tamus communis","Pyrus bourgaeana","Lonicera periclymenum","Osyris alba","Crataegus monogyna","Asparagus aphyllus"))
dimnames(hrq)<-pp3

### ZACKENBERG
zackq<-as.matrix(read.table("zackq.txt",header=F,sep="\t",dec=".",na.strings="NA"))
pp3<-list(c("Aedes impiger","Aedes nigripes","Bombus hyperboreus/polaris","Brachypogon sp.","Bradysia spp.","Clossiana chariclea","Colias hecla","Cricotopus sp.","Cryptinae sp.","Culicoides sp.","Delia echinata","Diplazontinae sp.","Drymeia groenlandica","Drymeia segnis","Entephria puncticeps","Eukiefferiella sp.","Eupeodes curtus","Eupeodes nigroventris","Forcipomyia sp.","Lasiopiophila pilosa","Limnophora sinuata","Limnophyes brachytomus","Limnophyes spp.","Lophosceles minimus","Megaselia sp.","MEGASPILIDAE Genus sp.","Microgasterinae sp.","Neoleria prominens","Nysius groenlandicus","Olethreutes inquitana","Olethreutes mengelana","Orthocladiinae indet.","Paraphaenocladius spp.","Parasyrphus tarsatus","Peleteria aenea","Phaonia bidentata","Platycheirus carinatus","Platycheirus lundbecki","Plebeius glandon spp. franklinii","Polia richardsoni","Procladius sp.","Pseudosmittia sp.","Rhamphomyia filicauda","Rhamphomyia nigrita","Rheocricotopus sp.","Scathophaga furcata","Smittia spp. ","Spilogona almqvistii","Spilogona arcticola","Spilogona deflorata","Spilogona denudata","Spilogona dorsata","Spilogona extensa","Spilogona malaisei","Spilogona melanosoma","Spilogona micans","Spilogona sanctipauli","Spilogona tornensis","Spilogona tundrae","Stenomacrus sp. A","Stenomacrus sp. B","Sympistis lapponica","Sympistis zetterstedti","Syngrapha parilis","Zaphne frontata"),c("Arenaria pseudofrigida","Armeria scabra","Arnica angustifolia","Cassiope tetragona","Cerastium arcticum","Chamaenerion latifolium","Cochlearia groenlandica","Draba arctica","Draba lactea","Dryas octopetala","Erigeron compositus","Lesquerella arctica","Melandrium triflorum","Papaver radicatum","Pedicularis flammea","Pedicularis hirsuta","Polygonum viviparum","Potentilla hyparctica","Potentilla rubricaulis","Ranunculus sulphureus","Rhododendron lapponicum","Salix arctica","Saxifraga caespitosa","Saxifraga cernua","Saxifraga hirculus","Saxifraga nivalis","Saxifraga oppositifolia","Silene acaulis","Stellaria longipes","Taraxacum phymatocarpum","Vaccinium uliginosum"))
dimnames(zackq)<-pp3

zack01<-(zackq > 0) * 1
pp3<-list(c("Aedes impiger","Aedes nigripes","Bombus hyperboreus/polaris","Brachypogon sp.","Bradysia spp.","Clossiana chariclea","Colias hecla","Cricotopus sp.","Cryptinae sp.","Culicoides sp.","Delia echinata","Diplazontinae sp.","Drymeia groenlandica","Drymeia segnis","Entephria puncticeps","Eukiefferiella sp.","Eupeodes curtus","Eupeodes nigroventris","Forcipomyia sp.","Lasiopiophila pilosa","Limnophora sinuata","Limnophyes brachytomus","Limnophyes spp.","Lophosceles minimus","Megaselia sp.","MEGASPILIDAE Genus sp.","Microgasterinae sp.","Neoleria prominens","Nysius groenlandicus","Olethreutes inquitana","Olethreutes mengelana","Orthocladiinae indet.","Paraphaenocladius spp.","Parasyrphus tarsatus","Peleteria aenea","Phaonia bidentata","Platycheirus carinatus","Platycheirus lundbecki","Plebeius glandon spp. franklinii","Polia richardsoni","Procladius sp.","Pseudosmittia sp.","Rhamphomyia filicauda","Rhamphomyia nigrita","Rheocricotopus sp.","Scathophaga furcata","Smittia spp. ","Spilogona almqvistii","Spilogona arcticola","Spilogona deflorata","Spilogona denudata","Spilogona dorsata","Spilogona extensa","Spilogona malaisei","Spilogona melanosoma","Spilogona micans","Spilogona sanctipauli","Spilogona tornensis","Spilogona tundrae","Stenomacrus sp. A","Stenomacrus sp. B","Sympistis lapponica","Sympistis zetterstedti","Syngrapha parilis","Zaphne frontata"),c("Arenaria pseudofrigida","Armeria scabra","Arnica angustifolia","Cassiope tetragona","Cerastium arcticum","Chamaenerion latifolium","Cochlearia groenlandica","Draba arctica","Draba lactea","Dryas octopetala","Erigeron compositus","Lesquerella arctica","Melandrium triflorum","Papaver radicatum","Pedicularis flammea","Pedicularis hirsuta","Polygonum viviparum","Potentilla hyparctica","Potentilla rubricaulis","Ranunculus sulphureus","Rhododendron lapponicum","Salix arctica","Saxifraga caespitosa","Saxifraga cernua","Saxifraga hirculus","Saxifraga nivalis","Saxifraga oppositifolia","Silene acaulis","Stellaria longipes","Taraxacum phymatocarpum","Vaccinium uliginosum"))
dimnames(zack01)<-pp3
#-----------------------------------------------------------------------------
