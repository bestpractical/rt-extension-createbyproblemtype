use inc::Module::Install;

RTx('RT-Extension-CreateByProblemType');
repository('https://github.com/bestpractical/rt-extension-createbyproblemtype.git');
requires_rt('6.0.0');

sign();
WriteAll();
