function setup
%% Check Requirements
fprintf('Checking requirements...');
all_requirements = true;
if ~exist('neuroelf', 'file')
    warning('Some functions in this package require the NeuroElf toolbox for reading and writing fMRI file formats, but this NeuroElf does not appear to be installed. Some functions will not work without NeuroElf.')
    all_requirements = false;
end
if all_requirements
    fprintf('success\n');
end

% %add directory to path
fprintf('Adding directories to path...');
path_to_collection = [pwd filesep 'AddToPath' filesep];
path(path,path_to_collection);
%save path
try
    savepath
catch
    warning('MATLAB Path could not be saved. Directories have been added to the path for this session only.\nThe most common solution is to run MATLAB as admin and try agian.')
end
fprintf('success\n');

%% Done
disp('Setup complete!')