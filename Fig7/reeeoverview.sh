export GMT_SESSION_NAME=$$
gmt begin GMT_gall_stereo png 7000
gmt set FORMAT_GEO_MAP ddd:mm:ssF
gmt set FONT_ANNOT_PRIMARY 18p,5,black #经纬度字体大小
gmt set MAP_TICK_LENGTH_PRIMARY 5P/3P
gmt set MAP_ANNOT_OBLIQUE 32
gmt set MAP_TICK_PEN_PRIMARY 3p,black
gmt set MAP_FRAME_TYPE plain
gmt set MAP_ANNOT_OFFSET_PRIMARY 4p
# range=92.58638/92.63278/29.1769/29.2657
# range=98.2908/98.3372/29.2298/29.3186
range=101.4521/101.4985/29.5069/29.5957

gmt basemap -JQ14.5c -R$range -Bxa0.04f0.02 -Bya0.04f0.02 -BWSen

gmt grdimage @earth_relief_01s -I+d -Cqzgy.cpt

# gmt grdimage part111.tif -I+d -t20
# gmt plot part3.txt -W2.8p,238/135/33
# gmt plot result.txt -W1.5p,86/246/6

# gmt grdimage part222.tif -I+d -t20
# gmt plot part1.txt -W2.8p,238/135/33
# gmt plot result.txt -W1.5p,86/246/6

gmt grdimage part333.tif -I+d -t20
gmt plot part2.txt -W2.8p,238/135/33
gmt plot result.txt -W1.5p,86/246/6


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
# gmt set FONT_ANNOT_PRIMARY 10p,4,black
# gmt coast -W1/2 -LjBR+o0.3c/0.5c+c101/10+w4+f+ar --MAP_FRAME_PEN=1p --MAP_TICK_PEN_PRIMARY=0.5p --MAP_TICK_LENGTH_PRIMARY=2P/1P --MAP_ANNOT_OFFSET_PRIMARY=2p

gmt end show