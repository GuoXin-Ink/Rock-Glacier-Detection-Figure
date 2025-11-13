export GMT_SESSION_NAME=$$
gmt begin test png 7000
gmt set FORMAT_GEO_MAP dddA
gmt set MAP_FRAME_TYPE plain
gmt set FONT_ANNOT_PRIMARY 10p,4,black
gmt set MAP_TICK_LENGTH_PRIMARY 3P/1.5P
gmt set MAP_ANNOT_OBLIQUE 32
gmt set MAP_TICK_PEN_PRIMARY 1.7p,black
gmt set MAP_FRAME_PEN 2p
# gmt set MAP_FRAME_WIDTH 17p      #fancy的边框宽度
gmt set MAP_TICK_PEN_PRIMARY 1p,black #经纬度刻度线粗细
gmt set MAP_TICK_LENGTH_PRIMARY 3P/1.5P #边框经纬度分界支出来的长度

gmt basemap -JCyl_stere/150/30/18c -R-180/180/-60/85 -Bxa60f60 -Bya30f30 -BWeSn

gmt grdimage @earth_relief_03m -I+d -Cgeo 
gmt plot zhou_shp.txt -W0.0p,black,-
# gmt plot tprogi.txt -W0.4p,100/149/237
# gmt plot global.txt -Sc -W0.0p,black -Gyellow -t20
# gmt grdimage PFI_NoFringe1.tif -t35 -I+d -Cpzi.cpt
# gmt coast -A5000 -W0.0p/black  -Slightblue1 

gmt set MAP_TICK_PEN_PRIMARY 0.5p,black
# gmt set MAP_TICK_PEN_SECONDARY 1p,black
gmt set FONT_ANNOT_PRIMARY 9p,4,black
gmt colorbar -C -DjBL+jBL+h+w5/0.15+o0.5c/0.5c -Ba3000f1500  -G-6600/6200 --MAP_FRAME_PEN=0.5p  --MAP_TICK_LENGTH_PRIMARY=1.5P/1P --MAP_ANNOT_OFFSET_PRIMARY=2p


gmt end show