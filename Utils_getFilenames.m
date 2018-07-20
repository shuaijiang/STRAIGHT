function filenames = Utils_getFilenames(path,lastname)
% shuaijiang@201807
temp = dir(path);
cntr = 1;
for i = 3:length(temp)  %ignore . and ..
    tmp = temp(i).name;
    [path,name,EXT] = fileparts(temp(i).name);
    if (strcmp(EXT, lastname))
        filenames{cntr} = tmp(1:end-length(lastname));
        cntr = cntr + 1;
    end
end
