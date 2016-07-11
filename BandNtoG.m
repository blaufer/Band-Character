clc; clear; clf;

%Load Band Data and Seperate Into x (energy) and y (bands) graph components
load 'Band Data N to G.dat';

energy = Band_Data_N_to_G(1:101,1)';
band1 = Band_Data_N_to_G(1:101,2)';
band2 = Band_Data_N_to_G(1:101,3)';
band3 = Band_Data_N_to_G(1:101,4)';
band4 = Band_Data_N_to_G(1:101,5)';
band5 = Band_Data_N_to_G(1:101,6)';
band6 = Band_Data_N_to_G(1:101,7)';

%Load Band Character Data and Seperate Into Specific Bands
load 'Band Character N to G.dat'

%Band 1
a1 = ((Band_Character_N_to_G(3,2)-Band_Character_N_to_G(1,2)))/100;
b1 = Band_Character_N_to_G(1,2):a1:Band_Character_N_to_G(3,2);
c1 = ((Band_Character_N_to_G(3,3)-Band_Character_N_to_G(1,3)))/100;
d1 = Band_Character_N_to_G(1,3):c1:Band_Character_N_to_G(3,3);
e1 = ((Band_Character_N_to_G(3,4)-Band_Character_N_to_G(1,4)))/100;
f1 = Band_Character_N_to_G(1,4):e1:Band_Character_N_to_G(3,4);
%Band 2
a2 = ((Band_Character_N_to_G(6,2)-Band_Character_N_to_G(4,2)))/100;
b2 = Band_Character_N_to_G(4,2):a2:Band_Character_N_to_G(6,2);
c2 = ((Band_Character_N_to_G(6,3)-Band_Character_N_to_G(4,3)))/100;
d2 = Band_Character_N_to_G(4,3):c2:Band_Character_N_to_G(6,3);
e2 = ((Band_Character_N_to_G(6,4)-Band_Character_N_to_G(4,4)))/100;
f2 = Band_Character_N_to_G(4,4):e2:Band_Character_N_to_G(6,4);
%Band 3
a3 = ((Band_Character_N_to_G(9,2)-Band_Character_N_to_G(7,2)))/100;
b3 = Band_Character_N_to_G(7,2):a3:Band_Character_N_to_G(9,2);
c3 = ((Band_Character_N_to_G(9,3)-Band_Character_N_to_G(7,3)))/100;
d3 = Band_Character_N_to_G(7,3):c3:Band_Character_N_to_G(9,3);
e3 = ((Band_Character_N_to_G(9,4)-Band_Character_N_to_G(7,4)))/100;
f3 = Band_Character_N_to_G(7,4):e3:Band_Character_N_to_G(9,4);
%Band 4
a4 = ((Band_Character_N_to_G(12,2)-Band_Character_N_to_G(10,2)))/100;
b4 = Band_Character_N_to_G(10,2):a4:Band_Character_N_to_G(12,2);
c4 = ((Band_Character_N_to_G(12,3)-Band_Character_N_to_G(10,3)))/100;
d4 = Band_Character_N_to_G(10,3):c4:Band_Character_N_to_G(12,3);
e4 = ((Band_Character_N_to_G(12,4)-Band_Character_N_to_G(10,4)))/100;
f4 = Band_Character_N_to_G(10,4):e4:Band_Character_N_to_G(12,4);
%Band 5
a5 = ((Band_Character_N_to_G(15,2)-Band_Character_N_to_G(13,2)))/100;
b5 = Band_Character_N_to_G(13,2):a4:Band_Character_N_to_G(15,2);
c5 = ((Band_Character_N_to_G(15,3)-Band_Character_N_to_G(13,3)))/100;
d5 = Band_Character_N_to_G(13,3):c4:Band_Character_N_to_G(15,3);
e5 = ((Band_Character_N_to_G(15,4)-Band_Character_N_to_G(13,4)))/100;
f5 = Band_Character_N_to_G(13,4):e4:Band_Character_N_to_G(15,4);
%Band 6
a6 = ((Band_Character_N_to_G(18,2)-Band_Character_N_to_G(16,2)))/100;
b6 = Band_Character_N_to_G(16,2):a4:Band_Character_N_to_G(18,2);
c6 = ((Band_Character_N_to_G(18,3)-Band_Character_N_to_G(16,3)))/100;
d6 = Band_Character_N_to_G(16,3):c4:Band_Character_N_to_G(18,3);
e6 = ((Band_Character_N_to_G(18,4)-Band_Character_N_to_G(16,4)))/100;
f6 = Band_Character_N_to_G(16,4):e4:Band_Character_N_to_G(18,4);

if isempty(b1) == 1 | b1 == 0, b1(101) = 0; end
if isempty(b2) == 1 | b2 == 0, b2(101) = 0; end
if isempty(b3) == 1 | b3 == 0, b3(101) = 0; end
if isempty(b4) == 1 | b4 == 0, b4(101) = 0; end
if isempty(b5) == 1 | b5 == 0, b5(101) = 0; end
if isempty(b6) == 1 | b6 == 0, b6(101) = 0; end
if isempty(d1) == 1 | d1 == 0, d1(101) = 0; end
if isempty(d2) == 1 | d2 == 0, d2(101) = 0; end
if isempty(d3) == 1 | d3 == 0, d3(101) = 0; end
if isempty(d4) == 1 | d4 == 0, d4(101) = 0; end
if isempty(d5) == 1 | d5 == 0, d5(101) = 0; end
if isempty(d6) == 1 | d6 == 0, d6(101) = 0; end
if isempty(f1) == 1 | f1 == 0, f1(101) = 0; end
if isempty(f2) == 1 | f2 == 0, f2(101) = 0; end
if isempty(f3) == 1 | f3 == 0, f3(101) = 0; end
if isempty(f4) == 1 | f4 == 0, f4(101) = 0; end
if isempty(f5) == 1 | f5 == 0, f5(101) = 0; end
if isempty(f6) == 1 | f6 == 0, f6(101) = 0; end

for q = 1:100
    hold on
    plot([energy(q),energy(q+1)],[band1(q),band1(q+1)],'Color',[b1(q),d1(q),f1(q)])
    plot([energy(q),energy(q+1)],[band2(q),band2(q+1)],'Color',[b2(q),d2(q),f2(q)])
    plot([energy(q),energy(q+1)],[band3(q),band3(q+1)],'Color',[b3(q),d3(q),f3(q)])
    plot([energy(q),energy(q+1)],[band4(q),band4(q+1)],'Color',[b4(q),d4(q),f4(q)])
    plot([energy(q),energy(q+1)],[band5(q),band5(q+1)],'Color',[b5(q),d5(q),f5(q)])
    plot([energy(q),energy(q+1)],[band6(q),band6(q+1)],'Color',[b6(q),d6(q),f6(q)])
end

ylabel('Energy (Ry)')
set(gca,'xTick',[1.707, 2.061, 2.414])
set(gca,'xTickLabel',{'N','S','G'},'fontname','symbol')
set(gca,'Ticklength',[0,0])
axis([1.707,2.414,0.2,1.4])

%c = colorbar('vertical');
%set(c, 'yTick', [10, 35, 60])
%set(c,'yTickLabel',{'d','p','s'})