package TestApp::View::TT;

use base 'Catalyst::View::TT';


__PACKAGE__->config( INCLUDE_PATH => 't/lib/TestApp/tt' );

1;

