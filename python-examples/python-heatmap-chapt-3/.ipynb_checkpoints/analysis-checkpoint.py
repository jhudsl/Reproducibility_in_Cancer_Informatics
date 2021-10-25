import os
from pathlib import Path
import pyrefinebio
import statistics
import pandas as pd
import numpy as np
import seaborn as sns; sns.set_theme(color_codes=True)
import IPython
df1=pd.read_csv('a/file/path/only/I/have/SRP070849.tsv', sep='\t')
mdf=pd.read_csv('a/file/path/only/I/have/SRP070849_metadata.tsv', sep='\t')
df1["Gene"]
df1['calc'] =df1.var(axis = 1, skipna = True)
filter_num=df1.calc.quantile([0.90]).values
df2=df1[df1.calc >float(filter_num)]
df2 =df_by_var.drop(['calc'], 1)
# groups = mdf.pop('refinebio_title')
# df2
# type(df2)
refinebio_title = mdf.pop('refinebio_title')
keys = dict(zip(refinebio_title.unique(), "rbg"))
keys_df = pd.DataFrame(exp_group.map(keys))
keys_df = color_key_df.set_index(df2.columns)
heatmap = sns.clustermap(df2, cmap ="mako", col_colors = keys_df, dendrogram_ratio = (0, .2), cbar_pos = (-.1, .2, .03, .5))
heatmap.savefig('heatmap.png')