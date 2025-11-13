export GMT_SESSION_NAME=$$
gmt begin GMT_gall_stereo-rg2 png 7000

# RG_1,2
gmt set FORMAT_GEO_MAP ddd:mm:ssF
gmt set FONT_ANNOT_PRIMARY 24.6p,4,black
gmt set MAP_TICK_LENGTH_PRIMARY 3P/1.5P
gmt set MAP_ANNOT_OBLIQUE 32
gmt set MAP_TICK_PEN_PRIMARY 3p,black
gmt set MAP_FRAME_TYPE plain



# RG-3
# gmt set FORMAT_GEO_MAP ddd:mm:ssF
# gmt set FONT_ANNOT_PRIMARY 14.6p,4,black
# gmt set MAP_TICK_LENGTH_PRIMARY 3P/1.5P
# gmt set MAP_ANNOT_OBLIQUE 32
# gmt set MAP_TICK_PEN_PRIMARY 3p,black
# gmt set MAP_FRAME_TYPE plain
# range=101.707896/101.71773/29.498361/29.5089 #RG-1
# range=101.71569/101.72059/29.49789/29.50356  #RG-2
range=102.00961/102.01610/29.90961/29.91501  #RG-3
# gmt basemap -JQ12c -R$range -Bxa0.003f0.003 -Bya0.003f0.003 -BWSen
gmt basemap -JQ12c -R$range -Bxa0.007f0.007 -Bya0.007f0.007 -BWSen #RG-1

# gmt grdimage @earth_relief_01s -I+d -Cqzgy.cpt

# gmt plot zhou_shp.txt -W0.0p,black
# gmt plot global.txt -Sc -W0.0p,black -Gyellow -t20
gmt grdimage rg-3-band1-1.tif -R$range -CSCM/grayC
# gmt coast -A5000 -W0.0p/black  -Slightblue1

# gmt plot polygon_centroids.txt -Sc -GHOTPINK2 -t20
# gmt plot polygon_points.txt  -Groyalblue1
gmt plot RG_3.txt -W2p,royalblue4
# gmt plot some_RGs_my.txt -W0.3p,RED


# gmt plot SOME_RGspoints_TPRoGI.txt -Sc -W0.4p,yellow -t20
# gmt plot SOME_RGspoints_my.txt -Sc -W0.4p,red -t20

# gmt plot test.txt -Sc -W1.5p,yellow -t20
# gmt plot test-1.txt -Sc -W1.5p,red -t20
# gmt plot per_point.txt -Sc -W0.0p,black -Gblue -t20
# gmt plot nper_point.txt -Sc -W0.0p,black -Gblue -t20

# gmt colorbar -C -DjBL+jBL+h+w5/0.25+o0.5c/0.5c -Ba0.2f0.2  -G0/1 --MAP_FRAME_PEN=1p --MAP_TICK_PEN_PRIMARY=1p --MAP_TICK_LENGTH_PRIMARY=2P/1P --MAP_ANNOT_OFFSET_PRIMARY=2p

# gmt plot DISE.txt -GSNOW3
# gmt plot test.txt -Sc -W0.4p,red
# gmt plot test-1.txt -Sc -W0.4p,yellow
# gmt plot DISE2.TXT -Gwhite
gmt set FONT_ANNOT_PRIMARY 14.5p,4,black
gmt set MAP_SCALE_HEIGHT 6p #比例尺高度
gmt coast -W1/2 -LjBR+o0.5c/0.8c+c101/10+w0.2+f+ar --MAP_FRAME_PEN=1.5p --MAP_TICK_PEN_PRIMARY=0.7p --MAP_TICK_LENGTH_PRIMARY=9P/10P --MAP_ANNOT_OFFSET_PRIMARY=2p

gmt end show