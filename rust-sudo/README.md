Rust-sudo is built on CODENN

To see details of CODENN, checkout this paper:

Summarizing Source Code using a Neural Attention Model (https://github.com/sriniiyer/codenn/blob/master/summarizing_source_code.pdf)

Requirements

* Torch (http://torch.ch/docs/getting-started.html)
* Cutorch

Setup environment


Build rust dataset

`cd src/model`
`./buildData.sh`

Train codenn models and predict on test set

`./run.sh {rust}`