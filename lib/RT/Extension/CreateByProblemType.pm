package RT::Extension::CreateByProblemType;

our $VERSION = '0.02';

use warnings;
use strict;

$RT::Config::META{CreateByProblemType} = 
    {
        Section         => 'General',
        Overridable     => 1,
        SortOrder       => 50,
        Widget          => '/Widgets/Form/Boolean',
        WidgetArguments => {
            Description => 'Create tickets by selecting a problem type, not a queue',    #loc
        },
    };

1;
