export GMT_SESSION_NAME=$$
gmt begin rock_glacier_inventory png 4000
gmt set FORMAT_GEO_MAP dddA
gmt set FONT_ANNOT_PRIMARY 20p,4,black

gmt set MAP_FRAME_TYPE plain
gmt set MAP_FRAME_PEN 4p,black
gmt set MAP_TICK_LENGTH_PRIMARY 5p/1.5p
gmt set MAP_ANNOT_OBLIQUE 32
gmt set MAP_TICK_PEN_PRIMARY 1.7p,black


# range=88/106/25/34  
gmt basemap -JT98.174/29.641/15c -R96.662/27.918/99.686/31.364+r -BWSen -Bxa1f1 -Bya1f1

gmt grdimage @earth_relief_15s  -I+d -Cqzgy.cpt
# gmt grdimage PFI_NoFringe1.tif -t35 -I+d -Cpzi.cpt
# gmt plot polygon_centroids.txt -Sc -GSEAGREEN3 -t20
# gmt plot polygon_points.txt  -Groyalblue1

# gmt plot per_point.txt -Sc -W0.0p,black -Gblue -t20
# gmt plot nper_point.txt -Sc -W0.0p,black -Gblue -t20

# gmt plot city_point.txt -Ss -W0.0p,black -Gyellow -t20

# gmt plot mountain_point.txt -St -W0.0p,black -Gred -t20

# gmt plot mountain1.txt -W2.6p,PEACHPUFF4 #RA_boundary
# gmt grdimage 100km1.tif  -I+d -Cmatter  -Q -t35

# gmt plot city_point.txt -Ss -W0.0p,black -Gyellow -t20

gmt plot mountain_point.txt -St -W0.0p,black -Gred -t20

gmt plot polygon_central_marker.txt -Sc -W0.0p,black -G250/211/174 -t20
gmt plot mountain_trend.txt -A  -W4.0p,DARKOLIVEGREEN4  -t20
gmt plot profile_line.txt -A   -W3p,black,-  -t20
# gmt set FONT 15p,4,black
# gmt coast -W1/2 -Bxa4f4 -Bya4f4 -BWSEN
# gmt coast -W1/2 -LjBR+o1c/1c+c101/10+w300+f+ar+ --MAP_SCALE_HEIGHT=10p --MAP_FRAME_PEN=1p --MAP_TICK_PEN_PRIMARY=1p --MAP_TICK_LENGTH_PRIMARY=3P/1P --MAP_ANNOT_OFFSET_PRIMARY=5p
# gmt colorbar -C -DjBL+jBL+h+w6/0.25+o1c/1c -Ba30f30  





gmt end show