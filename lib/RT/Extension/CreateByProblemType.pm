package RT::Extension::CreateByProblemType;

our $VERSION = '0.03';

use warnings;
use strict;

=head1 NAME

RT-Extension-CreateByProblemType - Choose from Problem Types rather than Queues for new tickets

=head1 SYNOPSIS

This extension modifies the "Create a ticket in..." drop-down on RT's
main page; instead of presenting a list of queue names, it instead
presents a list of problem types, and dispatches to the appropriate
queue.

It does this by inspecting the "Problem Type" custom field on each
queue, which should be of type "Select one value."  For each queue,
all possible values for this custom field will be added to the
drop-down, categorized under the queue name.  If a queue has no
"Problem Type" custom field, or the custom field has no possible
values, the queue name will appear instead.

This is a user-configurable option; advanced users may prefer to
revert to the simple queue name drop-down.  This preference appears
under the "General" header in user preferences, as "Create tickets by
selecting a problem type, not a queue."

=head1 INSTALLATION

=over

=item C<perl Makefile.PL>

=item C<make>

=item C<make install>

May need root permissions

=item Edit your F</opt/rt4/etc/RT_SiteConfig.pm>

If you are using RT 4.2 or greater, add this line:

    Plugin('RT::Extension::CreateByProblemType');

For earlier releases of RT 4, add this line:

    Set(@Plugins, qw(RT::Extension::CreateByProblemType));

or add C<RT::Extension::CreateByProblemType> to your existing C<@Plugins> line.

=item Clear your mason cache

    rm -rf /opt/rt4/var/mason_data/obj

=item Restart your webserver

=back

=head1 CONFIGURATION

To default this extension on

    Set( $CreateByProblemType, 1);


=head1 AUTHOR

Alex Vandiver <alexmv@bestpractical.com>
Kevin Falcone <falcone@bestpractical.com>

=head1 BUGS

All bugs should be reported via email to
L<bug-RT-Extension-CreateByProblemType@rt.cpan.org|mailto:bug-RT-Extension-CreateByProblemType@rt.cpan.org>
or via the web at
L<rt.cpan.org|http://rt.cpan.org/Public/Dist/Display.html?Name=RT-Extension-CreateByProblemType>.


=head1 LICENSE AND COPYRIGHT

This software is Copyright (c) 2008-2014 by Best Practical Solutions

This is free software, licensed under:

  The GNU General Public License, Version 2, June 1991

=cut

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
