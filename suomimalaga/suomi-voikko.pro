# Suomi-malaga, suomen kielen muoto-opin kuvaus.
#
# Tekijänoikeus © 2006 Hannu Väisänen (Etunimi.Sukunimi@joensuu.fi)
#
# Tämä ohjelma on vapaa; tätä ohjelmaa on sallittu levittää
# edelleen ja muuttaa GNU yleisen lisenssin (GPL lisenssin)
# ehtojen mukaan sellaisina kuin Free Software Foundation
# on ne julkaissut; joko Lisenssin version 2, tai (valinnan
# mukaan) minkä tahansa myöhemmän version mukaisesti.
#
# Tätä ohjelmaa levitetään siinä toivossa, että se olisi
# hyödyllinen, mutta ilman mitään takuuta; ilman edes
# hiljaista takuuta kaupallisesti hyväksyttävästä laadusta tai
# soveltuvuudesta tiettyyn tarkoitukseen. Katso GPL
# lisenssistä lisää yksityiskohtia.
#
# Tämän ohjelman mukana pitäisi tulla kopio GPL
# lisenssistä; jos näin ei ole, kirjoita osoitteeseen Free
# Software Foundation Inc., 59 Temple Place - Suite 330,
# Boston, MA 02111-1307, USA.
#
# Tämän ohjeman linkittäminen staattisesti tai dynaamisesti
# muihin moduuleihin on ohjelmaan perustuvan teoksen
# tekemistä, joka on siis GPL lisenssin ehtojen alainen.
#
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2, or (at your option)
# any later version.
#
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; see the file COPYING.  If not, write to the
# Free Software Foundation, Inc., 59 Temple Place -  Suite 330, Boston, MA
# 02111-1307 USA.
#
# Linking this program statically or dynamically with other modules is
# making a combined work based on this program.  Thus, the terms and
# conditions of the GNU General Public License cover the whole
# combination.
#
# This file has been modified by the contributors of Hunspell-fi project.
# Last change was on $Date: 2006-06-21 16:48:52 +0300 (ke, 21 kesä   2006) $ by $Author: hatp $.

# Tiedosto suomi.pro Voikkoa varten.


sym: suomi.sym

all: suomi.all suomi.inc subrule.inc suomi.pro

lex: suomi.lex suomi.inc subrule.inc suomi.pro

lex: sanat/atk.lex
lex: sanat/erikoissanat.lex
lex: sanat/etunimet.lex
lex: sanat/latex.lex
lex: sanat/lukusanat.lex
lex: sanat/lyhenteet.lex
lex: sanat/nimet.lex
lex: sanat/olla-ei.lex
lex: sanat/paikannimet.lex
lex: sanat/sanat.lex
lex: sanat/sukunimet.lex
lex: sanat/11-19.lex
lex: sanat/omat.lex
lex: sanat/yhdyssanat.lex
lex: sanat/shzh.lex
lex: sanat/lainen.lex

mor: suomi.mor suomi.inc

mallex: set transmit-line "./transmit"
malaga: set transmit-line "./transmit"

#mallex: set hidden +jatko
#malaga: set hidden +jatko

malaga: set display-line "malshow"
mallex: set display-line "malshow"

mallex: set use-display yes
malaga: set use-display yes



# Lipuilla malli ja tulostus voidaan säätää suomi-malagan toimintaa.
#
# Malli-lipun arvot:
#   voikko    Noudatetaan tarkasti suomen kielen oikeinkirjoitussääntöjä
#   sukija    Hyväksytään myös yleisimmät kirjoitusvirheet, esim. "julkasta".
#
# Malli-lipun muuttamisen jälkeen suomi-malaga pitää kääntää uudelleen.
#
# Tulostus-lipun arvot:
#    tavallinen           Tulostetaan sanan perusmuoto, esim. "kansaneläkelaitos".
#    merkitse_yhdyssanat  Merkitään yhdyssanoihin eri sanat: "=kansan=eläke=laitos".
#    koe                  Tämä tulostus on ohjelman testausta varten.
#
# Tulostuksissa ei ole lainausmerkkejä.


malaga: set switch tulostus merkitse_yhdyssanat
malaga: set switch malli voikko
mallex: set switch malli voikko
malaga: set switch taivutus uusi
mallex: set switch taivutus uusi
