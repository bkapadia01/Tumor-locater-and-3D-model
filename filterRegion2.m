function [BW_out,properties] = filterRegion2(BW_in)
%filterRegions  Filter BW image using auto-generated code from imageRegionAnalyzer app.
%  [BW_OUT,PROPERTIES] = filterRegions(BW_IN) filters binary image BW_IN
%  using auto-generated code from the imageRegionAnalyzer App. BW_OUT has
%  had all of the options and filtering selections that were specified in
%  imageRegionAnalyzer applied to it. The PROPERTIES structure contains the
%  attributes of BW_out that were visible in the App.

% Auto-generated by imageRegionAnalyzer app on 21-Jan-2016
%---------------------------------------------------------

BW_out = BW_in;

% Filter image based on image properties.
BW_out = bwpropfilt(BW_out, 'ConvexArea', [200, 2000]);

% Get properties.
properties = regionprops(BW_out, {'Area', 'ConvexArea', 'Eccentricity', 'EquivDiameter', 'EulerNumber', 'Extent', 'FilledArea', 'MajorAxisLength', 'MinorAxisLength', 'Orientation', 'Perimeter', 'Solidity'});

% Uncomment the following line to return the properties in a table.
% properties = struct2table(properties);
