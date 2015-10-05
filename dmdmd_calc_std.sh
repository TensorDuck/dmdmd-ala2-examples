#bash
#script for cyling through iterations and calculating rmsd for apo and closed, Q and FRET probe distance
start=1
step=1
end=50

cp ../tmp/thread0/topol.tpr .

for i in `seq $start $step $end`; do

echo Starting Iteration $i
iter=iter"$i"
fname="$iter".gro

g_rama -f iter"$i".gro -s ../topol.tpr -o iter"$i"-dihedral
done
