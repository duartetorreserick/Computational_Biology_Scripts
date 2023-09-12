#!/bin/bash           		                                                                                                                        

#SBATCH --job-name=Maker_Populus                                                                                                                     
#SBATCH -p bigmem                                                                                                                    
#SBATCH -N 1                                                                                                                                  
#SBATCH -n 1    #Tasks paralelos, recomendado para MPI, Default=1                                                                             
#SBATCH --cpus-per-task=12       #Cores requeridos por task, recomendado para multi-thread, Default=1                                          
#SBATCH --time=15-00:00:00                                                                                                                      
#SBATCH --mem=300g                                                                                                                             
#SBATCH --mail-user=en.duarte1086@uniandes.edu.co                                                                                                 
#SBATCH --mail-type=ALL                                                                                                                       
#SBATCH -o maker_Populues.o%j    

INPUT="/hpcfs/home/ciencias_biologicas/en.duarte1086/ENSAMBLAJE/MAKER/Populus"
module load maker/3.01.04

maker -fix_nucleotides $INPUT/maker_botps.ctl $INPUT/maker_exe.ctl $INPUT/maker_opts.ctl

echo "listopapi" 
	


