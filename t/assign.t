BEGIN { $| = 1; print "1..1\n"; }
END {print "not ok 1\n" unless $loaded;}
use File::Spec;
use lib File::Spec->catfile("..","lib");
use Math::MatrixReal;
$loaded = 1;
print "ok 1\n";
my $DEBUG = 0;

do 'funcs.pl';

$matrix = Math::MatrixReal->new_from_string(<<"MATRIX");
[  1 0 -1 0  3 ]
[ -1 0  1 1 -3 ]
[  2 0 -2 2  0 ]
MATRIX
$matrix2 = Math::MatrixReal->new_from_string(<<"MATRIX");
[  1 0 -1 0  3 ]
[ -1 0  1 1 -3 ]
[  1 1  1 1  1 ]
MATRIX

#my $row = $matrix->new(1,5);
#$row = $row->each(sub{(shift)+1});
#$matrix->assign_row(3,$row);
#ok_matrix(2,$matrix,$matrix2);