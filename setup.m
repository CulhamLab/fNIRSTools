function setup
%% Check Requirements
fprintf('Checking requirements...');
if ~exist('neuroelf', 'file')
    error('This package requires the NeuroElf toolbox for reading and writing fMRI file formats.')
end
fprintf('success\n');

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