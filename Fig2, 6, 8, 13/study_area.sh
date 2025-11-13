export GMT_SESSION_NAME=$$
gmt begin rock_glacier_inventory_result png 4000
gmt set FORMAT_GEO_MAP dddA
gmt set FONT_ANNOT_PRIMARY 10p,4,black
gmt set MAP_TICK_LENGTH_PRIMARY 3P/1.5P
gmt set MAP_ANNOT_OBLIQUE 32
gmt set MAP_TICK_PEN_PRIMARY 1.7p,black
# range=88/106/25/34 
gmt basemap -JT97.75/29 -R89/24.5/106.5/33.5+r -Bwsen
# gmt basemap -JT97.75/29 -R89/24.5/106.5/33.5+r -Bwsen
gmt grdimage @earth_relief_15s  -I+d -Cqzgy.cpt
gmt grdimage PFI_NoFringe1.tif -t35 -I+d -Cpzi.cpt
# gmt grdimage MAAT.tif -t35 -I+d -Cice
# gmt grdimage MAGT1.tif -t35 -I+d -CMAGT.cpt
# gmt grdimage AP.tif -t35 -I+d -CAP.cpt
# gmt grdimage ET.tif -t35 -I+d -CET.cpt
# gmt grdimage PISR.tif -t15 -I+d -Cstretched_colormap.cpt
# gmt grdimage SCD.tif -t35 -I+d -CSCD.cpt
# 石冰川点位
# gmt plot polygon_centroids.txt -Sc -GSEAGREEN3 -t20
gmt plot polygon_points.txt  -Groyalblue1

# gmt plot per_point.txt -Sc -W0.0p,black -GLIGHTORANGE 
gmt plot nper_point.txt -Sc -W0.0p,black -GTAN1 -t20

gmt plot city_point.txt -Ss -W0.0p,black -Gyellow -t20

gmt plot mountain_point.txt -St -W0.0p,black -Gred -t20


gmt plot mountain1.txt -W2.6p,PEACHPUFF4


gmt set FONT 15p,4,black
gmt coast -W1/2 -Bxa4f4g4 -Bya4f4g4 -BWSEN
gmt coast -W1/2 -LjBR+o1c/1c+c101/10+w300+f+ar+  --MAP_SCALE_HEIGHT=10p --MAP_FRAME_PEN=1p --MAP_TICK_PEN_PRIMARY=1p --MAP_TICK_LENGTH_PRIMARY=3P/1P --MAP_ANNOT_OFFSET_PRIMARY=5p
# gmt colorbar -C -DjBL+jBL+h+w5/0.25+o1c/1c -Ba5f5  -G-15/25 --MAP_FRAME_PEN=1p --MAP_TICK_PEN_PRIMARY=1p --MAP_TICK_LENGTH_PRIMARY=2P/1P --MAP_ANNOT_OFFSET_PRIMARY=2p
gmt colorbar -C -DjBL+jBL+h+w5/0.25+o1c/1c -Ba0.2f0.2  -G0/1 --FONT_ANNOT_PRIMARY=25p --MAP_FRAME_PEN=1p --MAP_TICK_PEN_PRIMARY=1p --MAP_TICK_LENGTH_PRIMARY=3P/1P --MAP_ANNOT_OFFSET_PRIMARY=5p

# 绘制黑色线段
# gmt plot jinsha-changdu.txt -W3p,black
# 使用相同的数据点绘制稍细的白色线段
# gmt plot jinsha-changdu.txt -W2p,white,-
# gmt plot city_point-1.txt -Ss -W0.0p,black -Gyellow -t20 #wang_xw_railway
# gmt plot city_point-1.txt -St -W0.0p,black -Gred -t20 #wang_xw_railway
gmt end showp