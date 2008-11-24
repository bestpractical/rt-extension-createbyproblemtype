use inc::Module::Install;

RTx('RT-Extension-CreateByProblemType');
author ('Alex Vandiver <alexmv@bestpractical.com>');
version_from ('lib/RT/Extension/CreateByProblemType.pm');
abstract_from('lib/RT/Extension/CreateByProblemType.pm');
license('GPLv2');

&WriteAll;
