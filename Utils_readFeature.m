function r = Utils_readFeature(fn, type, dim)
% r = Utils_ReadFeature(fn, dim)
fid = fopen(fn, 'r');
r = fread(fid, type);
fclose(fid);
r = reshape(r, dim, length(r)/dim)';
end
