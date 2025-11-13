export GMT_SESSION_NAME=$$
gmt begin GMT_gall_stereo png 7000
gmt set FORMAT_GEO_MAP ddd:mm:ssF
gmt set FONT_ANNOT_PRIMARY 10p,5,black #经纬度字体大小
gmt set MAP_TICK_LENGTH_PRIMARY 3P/1.5P #经纬度支出来的线长短
gmt set MAP_ANNOT_OBLIQUE 32
gmt set MAP_TICK_PEN_PRIMARY 1p,black #经纬度支出来的线的粗细
gmt set MAP_FRAME_TYPE plain
gmt set MAP_ANNOT_OFFSET_PRIMARY 2.5p  #经纬度离图的距离
# gmt set MAP_ANNOT_OBLIQUE lat_horizontal,separate

# range=98.7797/98.828/28.7181/28.8117
range=92.51126/92.56669/29.44522/29.48

gmt basemap -JQ14.5c -R$range -Bxa0.03f0.015 -Bya0.03f0.015 -BWSen

# gmt grdimage @earth_relief_01s -I+d -Cqzgy.cpt
gmt grdimage comparison3.tif  
# gmt grdimage part111.tif -I+d -t20
gmt plot TPRoGI-polygon.txt -W0.7p,246/124/87 
gmt plot result.txt -W0.7p,86/246/6 
# gmt plot result.txt -W0.7p,77/175/74
gmt plot polygon_points.txt  -Groyalblue1


# gmt plot part1.txt -W2.8p,238/135/33
# gmt plot result.txt -W1.5p,86/246/6

# gmt grdimage part333.tif -I+d -t20
# gmt plot part2.txt -W2.8p,238/135/33
# gmt plot result.txt -W1.5p,86/246/6


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