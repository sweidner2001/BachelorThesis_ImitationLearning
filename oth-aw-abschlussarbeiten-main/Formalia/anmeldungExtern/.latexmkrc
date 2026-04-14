$pdf_mode = 1;

$lualatex = "$lualatex -synctex=1 -interaction=nonstopmode  --shell-restricted --no-shell-escape --safer --nosocket";
@generated_exts = (@generated_exts, 'synctex.gz');

add_cus_dep( 'sage', 'sout', 0, 'makesout' );
$hash_calc_ignore_pattern{'sage'} = '^( st.goboom|print .SageT)';
sub makesout {
	system( "sage $_[0].sage" );
}
push @generated_exts, "sagetex.scmd";
push @generated_exts, "sagetex.sout";
push @generated_exts, "sagetex.sage.py";
push @generated_exts, "sagetex.sage";

add_cus_dep('glo', 'gls', 0, 'makeglo');
sub makeglo {
   system("makeindex $_[0].glo -s nomencl.ist -o $_[0].gls");
}
push @generated_exts, "glo";

add_cus_dep('ind', 'idx', 0, 'makeind');
sub makeind { 
   system("makeindex $_[0]");
}
push @generated_exts, "ind";
push @generated_exts, "idx";


add_cus_dep('nls', 'nlo', 0, 'makenls');
sub makenls { 
   system("makeindex $_[0].nlo -s nomencl.ist -o $_[0].nls");
}
push @generated_exts, "nls";

$clean_ext = "bbl run.xml"
