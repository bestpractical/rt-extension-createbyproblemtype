use inc::Module::Install;

RTx('RT-Extension-CreateByProblemType');
all_from('lib/RT/Extension/CreateByProblemType.pm');
readme_from('lib/RT/Extension/CreateByProblemType.pm');
license('GPLv2');

&WriteAll;
