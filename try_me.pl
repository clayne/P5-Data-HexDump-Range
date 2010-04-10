
use strict ;
use warnings ;

use lib qw(lib) ;
use Data::TreeDumper ;

use Data::HexDump::Range  qw() ;
 
my $range = # definition to re-use
	[
	  [sub{}, 5, 'blue on_cyan'],
	  ['data header', sub {}, 'blue on_cyan'],
	  ['data', 20, sub{}],
	  [sub{}],
	] ;
			
my $hdr = Data::HexDump::Range->new() ;

my $data = 'A' . chr(5) . ('0123456789' x  100 ) ;

$hdr->gather($range, $data) ;

print $hdr->dump_gathered() ;

