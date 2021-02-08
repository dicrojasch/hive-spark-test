# pip3 install --user pandas
import pandas as pd
import time
import sys
import ntpath

source_csv = sys.argv[1]
category = sys.argv[2]

chunk_size = 10 ** 6

tic = time.clock()
df = None
for chunk in pd.read_csv(source_csv, chunksize=chunk_size):
    if df is None:
        df = chunk.groupby(['sede']).size()
    else:
        df = df.add(chunk.groupby(['sede']).size(), fill_value=0)

new_df = df.groupby(['sede']).size()

new_df = new_df.reset_index()
new_df.columns = ["sede", "cantidad"]

new_df['inicial'] = new_df['sede']

new_df['sede'] = new_df['sede'].replace("Sede Centro", "Centro")
new_df['sede'] = new_df['sede'].replace("Sede Norte C", "Norte")
new_df['sede'] = new_df['sede'].replace("Sede Oriente F", "Oriente")

new_df['inicial'] = new_df['inicial'].replace("Sede Centro", "C")
new_df['inicial'] = new_df['inicial'].replace("Sede Norte C", "N")
new_df['inicial'] = new_df['inicial'].replace("Sede Oriente F", "O")

new_df = new_df[(new_df == category).any(axis=1)]
toc = time.clock()
new_df["tiempo"] = toc - tic
new_df.to_csv(ntpath.basename(source_csv).replace("test", "results"))


