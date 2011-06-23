expr `date -j -f  "%d/%m/%Y %H:%M:%S" "18/9/1810 06:00:00" "+%s"` - `date "+%s"`  |
awk '{	if( int( $1/86400 ) <  0 ) printf "Tiempo transcurrido desde que nacio Chile ⟶ %d dias, " ,
			int( $1/86400 ) ;
		if( int( $1/86400 ) < 0 || int( $1%86400/3600 ) < 0 ) printf "%d hrs, " ,
			int( $1%86400/3600 ) ;

		if( int( $1/86400 ) <  0 || int(  $1%86400/3600 ) < 0  || int( $1%3600/60  ) < 0)  printf "%d minutos, " ,
			int( $1%3600/60  ) ;

		if( int( $1/86400 ) < 0 || int(  $1%86400/3600 ) < 0 || int( $1%3600/60 ) < 0 || $1%60 < 0 ) printf "%d segundos. Haz que valgan la pena... :)" , $1%60 ;

		else printf "WTF!!!" }' |
sed   -E   's/-/   /'   |
sed   -E   's/-/   /'   |
sed   -E   's/-/   /'   |
sed   -E   's/-/   /'