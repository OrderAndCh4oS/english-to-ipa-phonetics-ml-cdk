 ß,
ĺ3´3
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 

BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
K
Bincount
arr
size
weights"T	
bins"T"
Ttype:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype

Cumsum
x"T
axis"Tidx
out"T"
	exclusivebool( "
reversebool( ""
Ttype:
2	"
Tidxtype0:
2	
$
DisableCopyOnRead
resource
R
Equal
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
A
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
?
FloorMod
x"T
y"T
z"T"
Ttype:
2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
Ą
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype
.
Identity

input"T
output"T"	
Ttype
l
LookupTableExportV2
table_handle
keys"Tkeys
values"Tvalues"
Tkeystype"
Tvaluestype
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype
b
LookupTableImportV2
table_handle
keys"Tin
values"Tout"
Tintype"
Touttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	

Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
>
Maximum
x"T
y"T
z"T"
Ttype:
2	

MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( 
>
Minimum
x"T
y"T
z"T"
Ttype:
2	
?
Mul
x"T
y"T
z"T"
Ttype:
2	
¨
MutableHashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype

NoOp
U
NotEqual
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
ł
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( ""
Ttype:
2	"
Tidxtype0:
2	

RaggedTensorToTensor
shape"Tshape
values"T
default_value"T:
row_partition_tensors"Tindex*num_row_partition_tensors
result"T"	
Ttype"
Tindextype:
2	"
Tshapetype:
2	"$
num_row_partition_tensorsint(0"#
row_partition_typeslist(string)
f
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx" 
Tidxtype0:
2
	
@
ReadVariableOp
resource
value"dtype"
dtypetype
k

ReduceJoin

inputs
reduction_indices

output"
	keep_dimsbool( "
	separatorstring 
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
Ľ
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
A
SelectV2
	condition

t"T
e"T
output"T"	
Ttype
d
Shape

input"T&
output"out_typeíout_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
Á
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ¨

StatelessWhile

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint

@
StaticRegexFullMatch	
input

output
"
patternstring
÷
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
e
StringSplitV2	
input
sep
indices	

values	
shape	"
maxsplitint˙˙˙˙˙˙˙˙˙
$
StringStrip	
input

output
<
Sub
x"T
y"T
z"T"
Ttype:
2	
-
Tanh
x"T
y"T"
Ttype:

2
°
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleéčelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements(
handleéčelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint˙˙˙˙˙˙˙˙˙
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
P
Unpack

value"T
output"T*num"
numint("	
Ttype"
axisint 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 

While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
"serve*2.12.02v2.12.0-rc1-12-g0db597d0d758ř*
ő
ConstConst*
_output_shapes
:-*
dtype0*ť
valueąBŽ-B/B[START]B[END]BaBtBÉBoBËBÉŞBsBrBkBlBnBiBvBuBpBÍĄBmBĘBdBÉ˛BzBjBbBÉŚBĚBcBxBfBĚŻBĚBĘBĚŠBÉBÉĄBĹBĘBÉBĘBeBÉžBÉąBÉŤ
ź
Const_1Const*
_output_shapes
:-*
dtype0	*
valueöBó	-"č                                                 	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       
Ź
Const_2Const*
_output_shapes
:+*
dtype0	*đ
valuećBă	+"Ř                                                 	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       
ë
Const_3Const*
_output_shapes
:+*
dtype0*Ż
valueĽB˘+B[START]B[END]BaBoBeBtBnBiBkBlBrBvBsBpBdBmBuBĂ­BcBĂĄBhBzBĂ˝BbBÄBÄBĹBjByBĹĄBĹžBgBĹŻBfBĂŠBĹBĂşBĹĽBxBĂłBÄBwBq
÷
Const_4Const*
_output_shapes
:-*
dtype0*ť
valueąBŽ-B/B[START]B[END]BaBtBÉBoBËBÉŞBsBrBkBlBnBiBvBuBpBÍĄBmBĘBdBÉ˛BzBjBbBÉŚBĚBcBxBfBĚŻBĚBĘBĚŠBÉBÉĄBĹBĘBÉBĘBeBÉžBÉąBÉŤ
ź
Const_5Const*
_output_shapes
:-*
dtype0	*
valueöBó	-"č                                                 	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       
I
Const_6Const*
_output_shapes
: *
dtype0	*
value	B	 R 
I
Const_7Const*
_output_shapes
: *
dtype0	*
value	B	 R 
I
Const_8Const*
_output_shapes
: *
dtype0	*
value	B	 R 
H
Const_9Const*
_output_shapes
: *
dtype0*
valueB B 
J
Const_10Const*
_output_shapes
: *
dtype0	*
value	B	 R
I
Const_11Const*
_output_shapes
: *
dtype0*
valueB B 
J
Const_12Const*
_output_shapes
: *
dtype0	*
value	B	 R 
N
Const_13Const*
_output_shapes
: *
dtype0*
valueB B[UNK]
J
Const_14Const*
_output_shapes
: *
dtype0	*
value	B	 R
J
Const_15Const*
_output_shapes
: *
dtype0	*
value	B	 R

MutableHashTableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name
table_1866*
value_dtype0	
l

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name3678*
value_dtype0	

MutableHashTable_1MutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name
table_36*
value_dtype0	
n
hash_table_1HashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name1848*
value_dtype0	

while/decoder_2/dense_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:/*.
shared_namewhile/decoder_2/dense_13/bias

1while/decoder_2/dense_13/bias/Read/ReadVariableOpReadVariableOpwhile/decoder_2/dense_13/bias*
_output_shapes
:/*
dtype0

while/decoder_2/dense_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	/*0
shared_name!while/decoder_2/dense_13/kernel

3while/decoder_2/dense_13/kernel/Read/ReadVariableOpReadVariableOpwhile/decoder_2/dense_13/kernel*
_output_shapes
:	/*
dtype0

while/decoder_2/dense_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*0
shared_name!while/decoder_2/dense_12/kernel

3while/decoder_2/dense_12/kernel/Read/ReadVariableOpReadVariableOpwhile/decoder_2/dense_12/kernel* 
_output_shapes
:
*
dtype0
×
?while/decoder_2/bahdanau_attention_3/additive_attention_3/scaleVarHandleOp*
_output_shapes
: *
dtype0*
shape:*P
shared_nameA?while/decoder_2/bahdanau_attention_3/additive_attention_3/scale
Đ
Swhile/decoder_2/bahdanau_attention_3/additive_attention_3/scale/Read/ReadVariableOpReadVariableOp?while/decoder_2/bahdanau_attention_3/additive_attention_3/scale*
_output_shapes	
:*
dtype0
Ć
4while/decoder_2/bahdanau_attention_3/dense_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*E
shared_name64while/decoder_2/bahdanau_attention_3/dense_11/kernel
ż
Hwhile/decoder_2/bahdanau_attention_3/dense_11/kernel/Read/ReadVariableOpReadVariableOp4while/decoder_2/bahdanau_attention_3/dense_11/kernel* 
_output_shapes
:
*
dtype0
Ć
4while/decoder_2/bahdanau_attention_3/dense_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*E
shared_name64while/decoder_2/bahdanau_attention_3/dense_10/kernel
ż
Hwhile/decoder_2/bahdanau_attention_3/dense_10/kernel/Read/ReadVariableOpReadVariableOp4while/decoder_2/bahdanau_attention_3/dense_10/kernel* 
_output_shapes
:
*
dtype0
§
%while/decoder_2/gru_5/gru_cell_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*6
shared_name'%while/decoder_2/gru_5/gru_cell_5/bias
 
9while/decoder_2/gru_5/gru_cell_5/bias/Read/ReadVariableOpReadVariableOp%while/decoder_2/gru_5/gru_cell_5/bias*
_output_shapes
:	*
dtype0
Ŕ
1while/decoder_2/gru_5/gru_cell_5/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*B
shared_name31while/decoder_2/gru_5/gru_cell_5/recurrent_kernel
š
Ewhile/decoder_2/gru_5/gru_cell_5/recurrent_kernel/Read/ReadVariableOpReadVariableOp1while/decoder_2/gru_5/gru_cell_5/recurrent_kernel* 
_output_shapes
:
*
dtype0
Ź
'while/decoder_2/gru_5/gru_cell_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*8
shared_name)'while/decoder_2/gru_5/gru_cell_5/kernel
Ľ
;while/decoder_2/gru_5/gru_cell_5/kernel/Read/ReadVariableOpReadVariableOp'while/decoder_2/gru_5/gru_cell_5/kernel* 
_output_shapes
:
*
dtype0
Š
&while/decoder_2/embedding_5/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	/*7
shared_name(&while/decoder_2/embedding_5/embeddings
˘
:while/decoder_2/embedding_5/embeddings/Read/ReadVariableOpReadVariableOp&while/decoder_2/embedding_5/embeddings*
_output_shapes
:	/*
dtype0

encoder_2/gru_4/gru_cell_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*0
shared_name!encoder_2/gru_4/gru_cell_4/bias

3encoder_2/gru_4/gru_cell_4/bias/Read/ReadVariableOpReadVariableOpencoder_2/gru_4/gru_cell_4/bias*
_output_shapes
:	*
dtype0
´
+encoder_2/gru_4/gru_cell_4/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*<
shared_name-+encoder_2/gru_4/gru_cell_4/recurrent_kernel
­
?encoder_2/gru_4/gru_cell_4/recurrent_kernel/Read/ReadVariableOpReadVariableOp+encoder_2/gru_4/gru_cell_4/recurrent_kernel* 
_output_shapes
:
*
dtype0
 
!encoder_2/gru_4/gru_cell_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*2
shared_name#!encoder_2/gru_4/gru_cell_4/kernel

5encoder_2/gru_4/gru_cell_4/kernel/Read/ReadVariableOpReadVariableOp!encoder_2/gru_4/gru_cell_4/kernel* 
_output_shapes
:
*
dtype0

 encoder_2/embedding_4/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	-*1
shared_name" encoder_2/embedding_4/embeddings

4encoder_2/embedding_4/embeddings/Read/ReadVariableOpReadVariableOp encoder_2/embedding_4/embeddings*
_output_shapes
:	-*
dtype0
p
hash_table_2HashTableV2*
_output_shapes
: *
	key_dtype0	*
shared_name172201*
value_dtype0
u
serving_default_input_textPlaceholder*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0*
shape:˙˙˙˙˙˙˙˙˙
ş
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_texthash_table_1Const_10Const_9Const_8 encoder_2/embedding_4/embeddings!encoder_2/gru_4/gru_cell_4/kernel+encoder_2/gru_4/gru_cell_4/recurrent_kernelencoder_2/gru_4/gru_cell_4/biasConst_15&while/decoder_2/embedding_5/embeddings'while/decoder_2/gru_5/gru_cell_5/kernel1while/decoder_2/gru_5/gru_cell_5/recurrent_kernel%while/decoder_2/gru_5/gru_cell_5/bias4while/decoder_2/bahdanau_attention_3/dense_10/kernel4while/decoder_2/bahdanau_attention_3/dense_11/kernel?while/decoder_2/bahdanau_attention_3/additive_attention_3/scalewhile/decoder_2/dense_12/kernelwhile/decoder_2/dense_13/kernelwhile/decoder_2/dense_13/biasConst_14hash_table_2Const_13Const_12Const_11*$
Tin
2					*
Tout
2*
_collective_manager_ids
 *L
_output_shapes:
8:'˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*0
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *-
f(R&
$__inference_signature_wrapper_222567
Đ
StatefulPartitionedCall_1StatefulPartitionedCallhash_table_2Const_5Const_4*
Tin
2	*
Tout
2*
_collective_manager_ids
 *&
 _has_manual_control_dependencies(*
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *(
f#R!
__inference__initializer_225809
Đ
StatefulPartitionedCall_2StatefulPartitionedCallhash_table_1Const_3Const_2*
Tin
2	*
Tout
2*
_collective_manager_ids
 *&
 _has_manual_control_dependencies(*
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *(
f#R!
__inference__initializer_225827

PartitionedCallPartitionedCall*	
Tin
 *
Tout
2*
_collective_manager_ids
 *&
 _has_manual_control_dependencies(*
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *(
f#R!
__inference__initializer_225842
Ě
StatefulPartitionedCall_3StatefulPartitionedCall
hash_tableConstConst_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *&
 _has_manual_control_dependencies(*
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *(
f#R!
__inference__initializer_225860

PartitionedCall_1PartitionedCall*	
Tin
 *
Tout
2*
_collective_manager_ids
 *&
 _has_manual_control_dependencies(*
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *(
f#R!
__inference__initializer_225875

NoOpNoOp^PartitionedCall^PartitionedCall_1^StatefulPartitionedCall_1^StatefulPartitionedCall_2^StatefulPartitionedCall_3
Í
AMutableHashTable_1_lookup_table_export_values/LookupTableExportV2LookupTableExportV2MutableHashTable_1*
Tkeys0*
Tvalues0	*%
_class
loc:@MutableHashTable_1*
_output_shapes

::
Ç
?MutableHashTable_lookup_table_export_values/LookupTableExportV2LookupTableExportV2MutableHashTable*
Tkeys0*
Tvalues0	*#
_class
loc:@MutableHashTable*
_output_shapes

::
˝Z
Const_16Const"/device:CPU:0*
_output_shapes
: *
dtype0*őY
valueëYBčY BáY

encoder
decoder
input_text_processor
output_text_processor
"output_token_string_from_index
tf_translate

signatures*
¨
	variables
	trainable_variables

regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	embedding
gru*
Ç
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	embedding
gru
	attention
Wc
fc*
;
	keras_api
_lookup_layer
_adapt_function*
;
	keras_api
_lookup_layer
 _adapt_function*
9
!	keras_api
"input_vocabulary
#lookup_table* 

$trace_0* 

%serving_default* 
 
&0
'1
(2
)3*
 
&0
'1
(2
)3*
* 

*non_trainable_variables

+layers
,metrics
-layer_regularization_losses
.layer_metrics
	variables
	trainable_variables

regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
 
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses
&
embeddings*
Á
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses
;_random_generator
<cell
=
state_spec*
J
>0
?1
@2
A3
B4
C5
D6
E7
F8
G9*
J
>0
?1
@2
A3
B4
C5
D6
E7
F8
G9*
* 

Hnon_trainable_variables

Ilayers
Jmetrics
Klayer_regularization_losses
Llayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
 
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
Q__call__
*R&call_and_return_all_conditional_losses
>
embeddings*
Á
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
W__call__
*X&call_and_return_all_conditional_losses
Y_random_generator
Zcell
[
state_spec*
Ż
\	variables
]trainable_variables
^regularization_losses
_	keras_api
`__call__
*a&call_and_return_all_conditional_losses
bW1
cW2
d	attention*

e	variables
ftrainable_variables
gregularization_losses
h	keras_api
i__call__
*j&call_and_return_all_conditional_losses

Ekernel*
Ś
k	variables
ltrainable_variables
mregularization_losses
n	keras_api
o__call__
*p&call_and_return_all_conditional_losses

Fkernel
Gbias*
* 
7
q	keras_api
rlookup_table
stoken_counts*

ttrace_0* 
* 
7
u	keras_api
vlookup_table
wtoken_counts*

xtrace_0* 
* 
* 
R
y_initializer
z_create_resource
{_initialize
|_destroy_resource* 

}	capture_1
~	capture_2
	capture_3
	capture_8

capture_19

capture_21

capture_22

capture_23* 

}	capture_1
~	capture_2
	capture_3
	capture_8

capture_19

capture_21

capture_22

capture_23* 
hb
VARIABLE_VALUE encoder_2/embedding_4/embeddings.encoder/variables/0/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUE!encoder_2/gru_4/gru_cell_4/kernel.encoder/variables/1/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUE+encoder_2/gru_4/gru_cell_4/recurrent_kernel.encoder/variables/2/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEencoder_2/gru_4/gru_cell_4/bias.encoder/variables/3/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1*
* 
* 
* 

&0*

&0*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses*
* 
* 

'0
(1
)2*

'0
(1
)2*
* 
Ľ
states
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
5	variables
6trainable_variables
7regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses*

trace_0
trace_1* 

trace_0
trace_1* 
* 
Ú
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
_random_generator

'kernel
(recurrent_kernel
)bias*
* 
nh
VARIABLE_VALUE&while/decoder_2/embedding_5/embeddings.decoder/variables/0/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE'while/decoder_2/gru_5/gru_cell_5/kernel.decoder/variables/1/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUE1while/decoder_2/gru_5/gru_cell_5/recurrent_kernel.decoder/variables/2/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE%while/decoder_2/gru_5/gru_cell_5/bias.decoder/variables/3/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE4while/decoder_2/bahdanau_attention_3/dense_10/kernel.decoder/variables/4/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE4while/decoder_2/bahdanau_attention_3/dense_11/kernel.decoder/variables/5/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE?while/decoder_2/bahdanau_attention_3/additive_attention_3/scale.decoder/variables/6/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEwhile/decoder_2/dense_12/kernel.decoder/variables/7/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEwhile/decoder_2/dense_13/kernel.decoder/variables/8/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEwhile/decoder_2/dense_13/bias.decoder/variables/9/.ATTRIBUTES/VARIABLE_VALUE*
* 
'
0
1
2
3
4*
* 
* 
* 

>0*

>0*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses*
* 
* 

?0
@1
A2*

?0
@1
A2*
* 
Ľ
 states
Ąnon_trainable_variables
˘layers
Łmetrics
 ¤layer_regularization_losses
Ľlayer_metrics
S	variables
Ttrainable_variables
Uregularization_losses
W__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses*

Śtrace_0
§trace_1* 

¨trace_0
Štrace_1* 
* 
Ú
Ş	variables
Ťtrainable_variables
Źregularization_losses
­	keras_api
Ž__call__
+Ż&call_and_return_all_conditional_losses
°_random_generator

?kernel
@recurrent_kernel
Abias*
* 

B0
C1
D2*

B0
C1
D2*
* 

ąnon_trainable_variables
˛layers
łmetrics
 ´layer_regularization_losses
ľlayer_metrics
\	variables
]trainable_variables
^regularization_losses
`__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses*
* 
* 
˘
ś	variables
ˇtrainable_variables
¸regularization_losses
š	keras_api
ş__call__
+ť&call_and_return_all_conditional_losses

Bkernel*
˘
ź	variables
˝trainable_variables
žregularization_losses
ż	keras_api
Ŕ__call__
+Á&call_and_return_all_conditional_losses

Ckernel*
š
Â	variables
Ătrainable_variables
Äregularization_losses
Ĺ	keras_api
Ć__call__
+Ç&call_and_return_all_conditional_losses
Č_random_generator
	Dscale*

E0*

E0*
* 

Énon_trainable_variables
Ęlayers
Ëmetrics
 Ělayer_regularization_losses
Ílayer_metrics
e	variables
ftrainable_variables
gregularization_losses
i__call__
*j&call_and_return_all_conditional_losses
&j"call_and_return_conditional_losses*
* 
* 

F0
G1*

F0
G1*
* 

Înon_trainable_variables
Ďlayers
Đmetrics
 Ńlayer_regularization_losses
Ňlayer_metrics
k	variables
ltrainable_variables
mregularization_losses
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses*
* 
* 
* 
V
Ó_initializer
Ô_create_resource
Ő_initialize
Ö_destroy_resource* 

×_create_resource
Ř_initialize
Ů_destroy_resourceJ
tableAinput_text_processor/_lookup_layer/token_counts/.ATTRIBUTES/table*

Ú	capture_1* 
* 
V
Ű_initializer
Ü_create_resource
Ý_initialize
Ţ_destroy_resource* 

ß_create_resource
ŕ_initialize
á_destroy_resourceK
tableBoutput_text_processor/_lookup_layer/token_counts/.ATTRIBUTES/table*

â	capture_1* 
* 

ătrace_0* 

ätrace_0* 

ĺtrace_0* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

<0*
* 
* 
* 
* 
* 
* 
* 

'0
(1
)2*

'0
(1
)2*
* 

ćnon_trainable_variables
çlayers
čmetrics
 élayer_regularization_losses
ęlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

Z0*
* 
* 
* 
* 
* 
* 
* 

?0
@1
A2*

?0
@1
A2*
* 

ënon_trainable_variables
ělayers
ímetrics
 îlayer_regularization_losses
ďlayer_metrics
Ş	variables
Ťtrainable_variables
Źregularization_losses
Ž__call__
+Ż&call_and_return_all_conditional_losses
'Ż"call_and_return_conditional_losses*
* 
* 
* 
* 

b0
c1
d2*
* 
* 
* 

B0*

B0*
* 

đnon_trainable_variables
ńlayers
ňmetrics
 ólayer_regularization_losses
ôlayer_metrics
ś	variables
ˇtrainable_variables
¸regularization_losses
ş__call__
+ť&call_and_return_all_conditional_losses
'ť"call_and_return_conditional_losses*
* 
* 

C0*

C0*
* 

őnon_trainable_variables
ölayers
÷metrics
 řlayer_regularization_losses
ůlayer_metrics
ź	variables
˝trainable_variables
žregularization_losses
Ŕ__call__
+Á&call_and_return_all_conditional_losses
'Á"call_and_return_conditional_losses*
* 
* 

D0*

D0*
* 

únon_trainable_variables
űlayers
ümetrics
 ýlayer_regularization_losses
ţlayer_metrics
Â	variables
Ătrainable_variables
Äregularization_losses
Ć__call__
+Ç&call_and_return_all_conditional_losses
'Ç"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

˙trace_0* 

trace_0* 

trace_0* 

trace_0* 

trace_0* 

trace_0* 
* 
* 

trace_0* 

trace_0* 

trace_0* 

trace_0* 

trace_0* 

trace_0* 
* 
* 
"
	capture_1
	capture_2* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
"
	capture_1
	capture_2* 
* 
* 
* 
* 
* 
"
	capture_1
	capture_2* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
	
StatefulPartitionedCall_4StatefulPartitionedCallsaver_filename encoder_2/embedding_4/embeddings!encoder_2/gru_4/gru_cell_4/kernel+encoder_2/gru_4/gru_cell_4/recurrent_kernelencoder_2/gru_4/gru_cell_4/bias&while/decoder_2/embedding_5/embeddings'while/decoder_2/gru_5/gru_cell_5/kernel1while/decoder_2/gru_5/gru_cell_5/recurrent_kernel%while/decoder_2/gru_5/gru_cell_5/bias4while/decoder_2/bahdanau_attention_3/dense_10/kernel4while/decoder_2/bahdanau_attention_3/dense_11/kernel?while/decoder_2/bahdanau_attention_3/additive_attention_3/scalewhile/decoder_2/dense_12/kernelwhile/decoder_2/dense_13/kernelwhile/decoder_2/dense_13/biasAMutableHashTable_1_lookup_table_export_values/LookupTableExportV2CMutableHashTable_1_lookup_table_export_values/LookupTableExportV2:1?MutableHashTable_lookup_table_export_values/LookupTableExportV2AMutableHashTable_lookup_table_export_values/LookupTableExportV2:1Const_16*
Tin
2		*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *(
f#R!
__inference__traced_save_226076

StatefulPartitionedCall_5StatefulPartitionedCallsaver_filename encoder_2/embedding_4/embeddings!encoder_2/gru_4/gru_cell_4/kernel+encoder_2/gru_4/gru_cell_4/recurrent_kernelencoder_2/gru_4/gru_cell_4/bias&while/decoder_2/embedding_5/embeddings'while/decoder_2/gru_5/gru_cell_5/kernel1while/decoder_2/gru_5/gru_cell_5/recurrent_kernel%while/decoder_2/gru_5/gru_cell_5/bias4while/decoder_2/bahdanau_attention_3/dense_10/kernel4while/decoder_2/bahdanau_attention_3/dense_11/kernel?while/decoder_2/bahdanau_attention_3/additive_attention_3/scalewhile/decoder_2/dense_12/kernelwhile/decoder_2/dense_13/kernelwhile/decoder_2/dense_13/biasMutableHashTable_1MutableHashTable*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *+
f&R$
"__inference__traced_restore_226134űÂ(
ź
ć

:__inference___backward_gpu_gru_with_fallback_223589_223725
placeholder
placeholder_1
placeholder_2
placeholder_3/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_7_grad_invertpermutation_transpose_7_perm)
%gradients_squeeze_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙n
gradients/grad_ys_1Identityplaceholder_1*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙a
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙O
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: 
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
::íĎ
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:Ť
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
shrink_axis_mask
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:Á
$gradients/transpose_7_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
::íĎĽ
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_7_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙a
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: g
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:ô
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*X
_output_shapesF
D:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: :°đ*
rnn_modegru
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ú
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
::íĎĆ
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: g
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:@i
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:@i
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:@h
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:h
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:h
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:h
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::ç
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes

:ë
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes

:ë
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes

:ë
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes

:@ë
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:@ë
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:@ę
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:ę
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:ę
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:ę
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:í
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:í
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Ľ
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
i
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:˘
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes	
:i
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:˘
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:i
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:˘
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¤
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ľ
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ľ
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:š
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:š
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:š
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:š
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:š
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:š
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:0
gradients/split_grad/concatConcatV2(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0* 
_output_shapes
:

gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ˘
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	|
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙u

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g

Identity_2Identity$gradients/split_grad/concat:output:0*
T0* 
_output_shapes
:
i

Identity_3Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
i

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0*
T0*
_output_shapes
:	"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*Ż
_input_shapes
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙::˙˙˙˙˙˙˙˙˙: ::˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: :°đ::˙˙˙˙˙˙˙˙˙: ::::::: : : *<
api_implements*(gru_4bea4fd2-303a-4944-b50d-a22864d0be38*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_223724*
go_backwards( *

time_major( :. *
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:;7
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :;7
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: 

_output_shapes
::2.
,
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :

_output_shapes
::;	7
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:2
.
,
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :#

_output_shapes
	:°đ: 

_output_shapes
::.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 

-
__inference__destroyer_225865
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
É5
Ż
(__inference_gpu_gru_with_fallback_224876

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : p

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*8
_output_shapes&
$:
:
:
*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*8
_output_shapes&
$:
:
:
*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:0S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*>
_output_shapes,
*::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:@a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:@a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:@\
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:\
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:]

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:]

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ě
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes
	:°đU
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Ő
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*S
_output_shapesA
?:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ć
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙q
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g

Identity_1Identitytranspose_7:y:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:
:
:	*<
api_implements*(gru_d083f546-8138-4350-a13c-d60941c835e9*
api_preferred_deviceGPU*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_h:HD
 
_output_shapes
:

 
_user_specified_namekernel:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	

_user_specified_namebias

/
__inference__initializer_225842
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
ô	
Ţ
while_cond_224710
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_224710___redundant_placeholder04
0while_while_cond_224710___redundant_placeholder14
0while_while_cond_224710___redundant_placeholder24
0while_while_cond_224710___redundant_placeholder34
0while_while_cond_224710___redundant_placeholder4
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2: : : : :˙˙˙˙˙˙˙˙˙: ::::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
Č
Ń
A__inference_gru_5_layer_call_and_return_conditional_losses_224105

inputs0
read_readvariableop_resource:
2
read_1_readvariableop_resource:
1
read_2_readvariableop_resource:	

identity_3

identity_4˘Read/ReadVariableOp˘Read_1/ReadVariableOp˘Read_2/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::íĎ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙r
Read/ReadVariableOpReadVariableOpread_readvariableop_resource* 
_output_shapes
:
*
dtype0\
IdentityIdentityRead/ReadVariableOp:value:0*
T0* 
_output_shapes
:
v
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource* 
_output_shapes
:
*
dtype0`

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
u
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes
:	*
dtype0_

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	
PartitionedCallPartitionedCallinputszeros:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *_
_output_shapesM
K:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *(
f#R!
__inference_standard_gru_223889w

Identity_3IdentityPartitionedCall:output:1^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙j

Identity_4IdentityPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ź
ć

:__inference___backward_gpu_gru_with_fallback_225280_225416
placeholder
placeholder_1
placeholder_2
placeholder_3/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_7_grad_invertpermutation_transpose_7_perm)
%gradients_squeeze_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙n
gradients/grad_ys_1Identityplaceholder_1*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙a
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙O
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: 
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
::íĎ
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:Ť
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
shrink_axis_mask
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:Á
$gradients/transpose_7_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
::íĎĽ
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_7_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙a
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: g
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:ô
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*X
_output_shapesF
D:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: :°đ*
rnn_modegru
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ú
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
::íĎĆ
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: g
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:@i
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:@i
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:@h
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:h
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:h
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:h
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::ç
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes

:ë
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes

:ë
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes

:ë
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes

:@ë
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:@ë
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:@ę
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:ę
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:ę
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:ę
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:í
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:í
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Ľ
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
i
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:˘
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes	
:i
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:˘
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:i
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:˘
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¤
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ľ
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ľ
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:š
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:š
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:š
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:š
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:š
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:š
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:0
gradients/split_grad/concatConcatV2(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0* 
_output_shapes
:

gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ˘
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	|
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙u

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g

Identity_2Identity$gradients/split_grad/concat:output:0*
T0* 
_output_shapes
:
i

Identity_3Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
i

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0*
T0*
_output_shapes
:	"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*Ż
_input_shapes
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙::˙˙˙˙˙˙˙˙˙: ::˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: :°đ::˙˙˙˙˙˙˙˙˙: ::::::: : : *<
api_implements*(gru_763ea995-9cec-46e8-a459-24ea90b94caa*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_225415*
go_backwards( *

time_major( :. *
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:;7
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :;7
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: 

_output_shapes
::2.
,
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :

_output_shapes
::;	7
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:2
.
,
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :#

_output_shapes
	:°đ: 

_output_shapes
::.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
Ç-
â
while_body_223800
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙|
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¸
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Y
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ž
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_splits
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
while/SigmoidSigmoidwhile/add:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙u
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙p
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙l
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙V

while/TanhTanhwhile/add_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙P
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?l
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙i
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙¸
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/add_3:z:0*
_output_shapes
: *
element_dtype0:éčŇO
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: O
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: `
while/Identity_4Identitywhile/add_3:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Y
_input_shapesH
F: : : : :˙˙˙˙˙˙˙˙˙: : :
::
::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
:!

_output_shapes	
::&	"
 
_output_shapes
:
:!


_output_shapes	
:
Ç
ć

:__inference___backward_gpu_gru_with_fallback_222041_222177
placeholder
placeholder_1
placeholder_2
placeholder_3/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_7_grad_invertpermutation_transpose_7_perm)
%gradients_squeeze_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙e
gradients/grad_ys_1Identityplaceholder_1*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙a
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙O
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: 
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
::íĎ
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:˘
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_mask
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:¸
$gradients/transpose_7_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
::íĎĽ
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙ú
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_7_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*,
_output_shapes
:˙˙˙˙˙˙˙˙˙a
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: g
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:ë
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*O
_output_shapes=
;:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: :°đ*
rnn_modegru
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ń
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
::íĎĆ
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: g
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:@i
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:@i
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:@h
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:h
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:h
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:h
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::ç
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes

:ë
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes

:ë
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes

:ë
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes

:@ë
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:@ë
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:@ę
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:ę
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:ę
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:ę
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:í
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:í
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Ľ
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
i
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:˘
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes	
:i
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:˘
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:i
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:˘
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¤
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ľ
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ľ
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:š
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:š
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:š
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:š
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:š
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:š
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:0
gradients/split_grad/concatConcatV2(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0* 
_output_shapes
:

gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ˘
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	s
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙u

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g

Identity_2Identity$gradients/split_grad/concat:output:0*
T0* 
_output_shapes
:
i

Identity_3Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
i

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0*
T0*
_output_shapes
:	"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: :˙˙˙˙˙˙˙˙˙::˙˙˙˙˙˙˙˙˙: ::˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: :°đ::˙˙˙˙˙˙˙˙˙: ::::::: : : *<
api_implements*(gru_419b21df-e3dd-4c73-9336-81a862f3d97b*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_222176*
go_backwards( *

time_major( :. *
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:2.
,
_output_shapes
:˙˙˙˙˙˙˙˙˙:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :2.
,
_output_shapes
:˙˙˙˙˙˙˙˙˙: 

_output_shapes
::2.
,
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :

_output_shapes
::2	.
,
_output_shapes
:˙˙˙˙˙˙˙˙˙:2
.
,
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :#

_output_shapes
	:°đ: 

_output_shapes
::.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
É5
Ż
(__inference_gpu_gru_with_fallback_223588

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : p

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*8
_output_shapes&
$:
:
:
*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*8
_output_shapes&
$:
:
:
*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:0S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*>
_output_shapes,
*::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:@a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:@a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:@\
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:\
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:]

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:]

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ě
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes
	:°đU
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Ő
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*S
_output_shapesA
?:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ć
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙q
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g

Identity_1Identitytranspose_7:y:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:
:
:	*<
api_implements*(gru_4bea4fd2-303a-4944-b50d-a22864d0be38*
api_preferred_deviceGPU*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_h:HD
 
_output_shapes
:

 
_user_specified_namekernel:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	

_user_specified_namebias
˘
Ş
while_cond_221767
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3

while_placeholder_4
while_placeholder_5

while_placeholder_6	
while_less_range_limit4
0while_while_cond_221767___redundant_placeholder0	4
0while_while_cond_221767___redundant_placeholder14
0while_while_cond_221767___redundant_placeholder24
0while_while_cond_221767___redundant_placeholder34
0while_while_cond_221767___redundant_placeholder44
0while_while_cond_221767___redundant_placeholder54
0while_while_cond_221767___redundant_placeholder64
0while_while_cond_221767___redundant_placeholder74
0while_while_cond_221767___redundant_placeholder84
0while_while_cond_221767___redundant_placeholder95
1while_while_cond_221767___redundant_placeholder105
1while_while_cond_221767___redundant_placeholder115
1while_while_cond_221767___redundant_placeholder12	5
1while_while_cond_221767___redundant_placeholder13
while_identity
^

while/LessLesswhile_placeholderwhile_less_range_limit*
T0*
_output_shapes
: ą

while/condStatelessIfwhile/Less:z:0while_placeholder_3*
Tcond0
*
Tin
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 **
else_branchR
while_cond_false_221784*
output_shapes
: *)
then_branchR
while_cond_true_221783U
while/cond/IdentityIdentitywhile/cond:output:0*
T0
*
_output_shapes
: Y
while/IdentityIdentitywhile/cond/Identity:output:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: :::::::::::::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙:	

_output_shapes
: :


_output_shapes
::

_output_shapes
::

_output_shapes
::

_output_shapes
:
¸?
ź
&__forward_gpu_gru_with_fallback_224635

inputs
init_h_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
cudnnrnn
transpose_7_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
cudnnrnn_input_c

concat
transpose_perm

init_h
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dimc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : r

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*8
_output_shapes&
$:
:
:
*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*8
_output_shapes&
$:
:
:
*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:0S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*>
_output_shapes,
*::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:@a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:@a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:@\
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:\
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:]

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:]

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ż
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Ů
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*S
_output_shapesA
?:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ć
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙q
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g

Identity_1Identitytranspose_7:y:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:
:
:	*<
api_implements*(gru_2335fbf9-8a5a-435e-acc1-6b0e0fd5358f*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_224500_224636*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_h:HD
 
_output_shapes
:

 
_user_specified_namekernel:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	

_user_specified_namebias
ăG

__inference_adapt_step_224236
iterator9
5none_lookup_table_find_lookuptablefindv2_table_handle:
6none_lookup_table_find_lookuptablefindv2_default_value	˘IteratorGetNext˘(None_lookup_table_find/LookupTableFindV2˘,None_lookup_table_insert/LookupTableInsertV2Š
IteratorGetNextIteratorGetNextiterator*
_class
loc:@iterator*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*"
output_shapes
:˙˙˙˙˙˙˙˙˙*
output_types
2]
StringStripStringStripIteratorGetNext:components:0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙[
StringJoin/inputs_0Const*
_output_shapes
: *
dtype0*
valueB B[START]Y
StringJoin/inputs_2Const*
_output_shapes
: *
dtype0*
valueB B[END]Ş

StringJoin
StringJoinStringJoin/inputs_0:output:0StringStrip:output:0StringJoin/inputs_2:output:0*
N*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	separator R
StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B 
StringSplit/StringSplitV2StringSplitV2StringJoin:output:0StringSplit/Const:output:0*<
_output_shapes*
(:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:p
StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       r
!StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ĺ
StringSplit/strided_sliceStridedSlice#StringSplit/StringSplitV2:indices:0(StringSplit/strided_slice/stack:output:0*StringSplit/strided_slice/stack_1:output:0*StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

begin_mask*
end_mask*
shrink_axis_maskk
!StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
StringSplit/strided_slice_1StridedSlice!StringSplit/StringSplitV2:shape:0*StringSplit/strided_slice_1/stack:output:0,StringSplit/strided_slice_1/stack_1:output:0,StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_maskŤ
BStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast"StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙˘
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast$StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: Đ
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
::íĎ
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ˘
KStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdUStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0UStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: 
PStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : Ť
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreaterTStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0YStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ×
KStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastRStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: 
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0WStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: 
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B : 
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2SStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0UStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: 
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulOStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: 
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximumHStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: 
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimumHStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: 
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 §
TStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙Ž
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ReshapeReshapeFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0]StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shape:output:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
OStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountWStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape:output:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0WStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
IStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ¨
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumVStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
MStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R 
IStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ˙
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2VStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙Ł
UniqueWithCountsUniqueWithCounts"StringSplit/StringSplitV2:values:0*
T0*A
_output_shapes/
-:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
out_idx0	Ą
(None_lookup_table_find/LookupTableFindV2LookupTableFindV25none_lookup_table_find_lookuptablefindv2_table_handleUniqueWithCounts:y:06none_lookup_table_find_lookuptablefindv2_default_value",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
:|
addAddV2UniqueWithCounts:count:01None_lookup_table_find/LookupTableFindV2:values:0*
T0	*
_output_shapes
:
,None_lookup_table_insert/LookupTableInsertV2LookupTableInsertV25none_lookup_table_find_lookuptablefindv2_table_handleUniqueWithCounts:y:0add:z:0)^None_lookup_table_find/LookupTableFindV2",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
 *(
_construction_contextkEagerRuntime*
_input_shapes
: : : 2"
IteratorGetNextIteratorGetNext2T
(None_lookup_table_find/LookupTableFindV2(None_lookup_table_find/LookupTableFindV22\
,None_lookup_table_insert/LookupTableInsertV2,None_lookup_table_insert/LookupTableInsertV2:( $
"
_user_specified_name
iterator:

_output_shapes
: 
Ç-
â
while_body_225491
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙|
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¸
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Y
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ž
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_splits
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
while/SigmoidSigmoidwhile/add:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙u
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙p
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙l
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙V

while/TanhTanhwhile/add_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙P
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?l
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙i
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙¸
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/add_3:z:0*
_output_shapes
: *
element_dtype0:éčŇO
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: O
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: `
while/Identity_4Identitywhile/add_3:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Y
_input_shapesH
F: : : : :˙˙˙˙˙˙˙˙˙: : :
::
::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
:!

_output_shapes	
::&	"
 
_output_shapes
:
:!


_output_shapes	
:
Ç-
â
while_body_221875
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙|
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¸
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Y
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ž
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_splits
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
while/SigmoidSigmoidwhile/add:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙u
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙p
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙l
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙V

while/TanhTanhwhile/add_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙P
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?l
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙i
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙¸
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/add_3:z:0*
_output_shapes
: *
element_dtype0:éčŇO
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: O
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: `
while/Identity_4Identitywhile/add_3:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Y
_input_shapesH
F: : : : :˙˙˙˙˙˙˙˙˙: : :
::
::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
:!

_output_shapes	
::&	"
 
_output_shapes
:
:!


_output_shapes	
:

-
__inference__destroyer_225847
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
Đ
Ó
A__inference_gru_5_layer_call_and_return_conditional_losses_225419
inputs_00
read_readvariableop_resource:
2
read_1_readvariableop_resource:
1
read_2_readvariableop_resource:	

identity_3

identity_4˘Read/ReadVariableOp˘Read_1/ReadVariableOp˘Read_2/ReadVariableOpK
ShapeShapeinputs_0*
T0*
_output_shapes
::íĎ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙r
Read/ReadVariableOpReadVariableOpread_readvariableop_resource* 
_output_shapes
:
*
dtype0\
IdentityIdentityRead/ReadVariableOp:value:0*
T0* 
_output_shapes
:
v
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource* 
_output_shapes
:
*
dtype0`

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
u
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes
:	*
dtype0_

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	
PartitionedCallPartitionedCallinputs_0zeros:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *_
_output_shapesM
K:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *(
f#R!
__inference_standard_gru_225203w

Identity_3IdentityPartitionedCall:output:1^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙j

Identity_4IdentityPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:_ [
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs_0
Ď
;
__inference__creator_225852
identity˘
hash_tablel

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name3678*
value_dtype0	W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: S
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
î	
Ë
&__inference_gru_5_layer_call_fn_225042
inputs_0
unknown:

	unknown_0:

	unknown_1:	
identity

identity_1˘StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *I
_output_shapes7
5:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_gru_5_layer_call_and_return_conditional_losses_224105}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs_0
î	
Ë
&__inference_gru_4_layer_call_fn_224249
inputs_0
unknown:

	unknown_0:

	unknown_1:	
identity

identity_1˘StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *I
_output_shapes7
5:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_gru_4_layer_call_and_return_conditional_losses_222946}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs_0
É5
Ż
(__inference_gpu_gru_with_fallback_222806

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : p

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*8
_output_shapes&
$:
:
:
*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*8
_output_shapes&
$:
:
:
*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:0S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*>
_output_shapes,
*::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:@a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:@a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:@\
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:\
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:]

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:]

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ě
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes
	:°đU
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Ő
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*S
_output_shapesA
?:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ć
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙q
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g

Identity_1Identitytranspose_7:y:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:
:
:	*<
api_implements*(gru_dc985ab4-8740-4360-ac37-7c2f70f73809*
api_preferred_deviceGPU*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_h:HD
 
_output_shapes
:

 
_user_specified_namekernel:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	

_user_specified_namebias
ô	
Ţ
while_cond_223799
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_223799___redundant_placeholder04
0while_while_cond_223799___redundant_placeholder14
0while_while_cond_223799___redundant_placeholder24
0while_while_cond_223799___redundant_placeholder34
0while_while_cond_223799___redundant_placeholder4
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2: : : : :˙˙˙˙˙˙˙˙˙: ::::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
ź
ć

:__inference___backward_gpu_gru_with_fallback_221602_221738
placeholder
placeholder_1
placeholder_2
placeholder_3/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_7_grad_invertpermutation_transpose_7_perm)
%gradients_squeeze_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙n
gradients/grad_ys_1Identityplaceholder_1*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙a
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙O
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: 
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
::íĎ
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:Ť
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
shrink_axis_mask
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:Á
$gradients/transpose_7_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
::íĎĽ
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_7_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙a
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: g
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:ô
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*X
_output_shapesF
D:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: :°đ*
rnn_modegru
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ú
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
::íĎĆ
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: g
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:@i
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:@i
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:@h
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:h
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:h
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:h
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::ç
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes

:ë
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes

:ë
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes

:ë
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes

:@ë
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:@ë
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:@ę
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:ę
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:ę
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:ę
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:í
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:í
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Ľ
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
i
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:˘
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes	
:i
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:˘
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:i
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:˘
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¤
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ľ
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ľ
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:š
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:š
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:š
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:š
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:š
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:š
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:0
gradients/split_grad/concatConcatV2(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0* 
_output_shapes
:

gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ˘
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	|
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙u

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g

Identity_2Identity$gradients/split_grad/concat:output:0*
T0* 
_output_shapes
:
i

Identity_3Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
i

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0*
T0*
_output_shapes
:	"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*Ż
_input_shapes
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙::˙˙˙˙˙˙˙˙˙: ::˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: :°đ::˙˙˙˙˙˙˙˙˙: ::::::: : : *<
api_implements*(gru_c0322139-5640-46e6-97ba-0dcf58cc8db4*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_221737*
go_backwards( *

time_major( :. *
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:;7
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :;7
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: 

_output_shapes
::2.
,
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :

_output_shapes
::;	7
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:2
.
,
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :#

_output_shapes
	:°đ: 

_output_shapes
::.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
>
Ł
__inference_standard_gru_224423

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3O
unstackUnpackbias*
T0*"
_output_shapes
::*	
numc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙P
ShapeShapetranspose:y:0*
T0*
_output_shapes
::íĎ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙˛
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ŕ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ę
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙i
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ś
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ź
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_splita
addAddV2split:output:0split_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙N
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
add_1AddV2split:output:1split_1:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙R
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
mulMulSigmoid_1:y:0split_1:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
add_2AddV2split:output:2mul:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙J
TanhTanh	add_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙T
mul_1MulSigmoid:y:0init_h*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Z
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙R
mul_2Mulsub:z:0Tanh:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙W
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ś
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ş
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*Z
_output_shapesH
F: : : : :˙˙˙˙˙˙˙˙˙: : :
::
:* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_224334*
condR
while_cond_224333*Y
output_shapesH
F: : : : :˙˙˙˙˙˙˙˙˙: : :
::
:*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ě
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?a
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g

Identity_1Identitytranspose_1:y:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙Y

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:
:
:	*<
api_implements*(gru_2335fbf9-8a5a-435e-acc1-6b0e0fd5358f*
api_preferred_deviceCPU*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_h:HD
 
_output_shapes
:

 
_user_specified_namekernel:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	

_user_specified_namebias
>
Ł
__inference_standard_gru_223107

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3O
unstackUnpackbias*
T0*"
_output_shapes
::*	
numc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙P
ShapeShapetranspose:y:0*
T0*
_output_shapes
::íĎ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙˛
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ŕ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ę
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙i
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ś
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ź
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_splita
addAddV2split:output:0split_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙N
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
add_1AddV2split:output:1split_1:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙R
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
mulMulSigmoid_1:y:0split_1:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
add_2AddV2split:output:2mul:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙J
TanhTanh	add_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙T
mul_1MulSigmoid:y:0init_h*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Z
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙R
mul_2Mulsub:z:0Tanh:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙W
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ś
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ş
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*Z
_output_shapesH
F: : : : :˙˙˙˙˙˙˙˙˙: : :
::
:* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_223018*
condR
while_cond_223017*Y
output_shapesH
F: : : : :˙˙˙˙˙˙˙˙˙: : :
::
:*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ě
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?a
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g

Identity_1Identitytranspose_1:y:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙Y

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:
:
:	*<
api_implements*(gru_5976a3ee-e574-4dbf-b0cb-b865ba03a7ab*
api_preferred_deviceCPU*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_h:HD
 
_output_shapes
:

 
_user_specified_namekernel:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	

_user_specified_namebias
ď
Ú
__inference_restore_fn_225907
restored_tensors_0
restored_tensors_1	C
?mutablehashtable_table_restore_lookuptableimportv2_table_handle
identity˘2MutableHashTable_table_restore/LookupTableImportV2
2MutableHashTable_table_restore/LookupTableImportV2LookupTableImportV2?mutablehashtable_table_restore_lookuptableimportv2_table_handlerestored_tensors_0restored_tensors_1",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: {
NoOpNoOp3^MutableHashTable_table_restore/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

::: 2h
2MutableHashTable_table_restore/LookupTableImportV22MutableHashTable_table_restore/LookupTableImportV2:L H

_output_shapes
:
,
_user_specified_namerestored_tensors_0:LH

_output_shapes
:
,
_user_specified_namerestored_tensors_1
ô	
Ţ
while_cond_225490
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_225490___redundant_placeholder04
0while_while_cond_225490___redundant_placeholder14
0while_while_cond_225490___redundant_placeholder24
0while_while_cond_225490___redundant_placeholder34
0while_while_cond_225490___redundant_placeholder4
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2: : : : :˙˙˙˙˙˙˙˙˙: ::::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
¸?
ź
&__forward_gpu_gru_with_fallback_222942

inputs
init_h_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
cudnnrnn
transpose_7_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
cudnnrnn_input_c

concat
transpose_perm

init_h
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dimc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : r

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*8
_output_shapes&
$:
:
:
*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*8
_output_shapes&
$:
:
:
*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:0S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*>
_output_shapes,
*::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:@a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:@a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:@\
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:\
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:]

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:]

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ż
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Ů
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*S
_output_shapesA
?:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ć
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙q
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g

Identity_1Identitytranspose_7:y:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:
:
:	*<
api_implements*(gru_dc985ab4-8740-4360-ac37-7c2f70f73809*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_222807_222943*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_h:HD
 
_output_shapes
:

 
_user_specified_namekernel:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	

_user_specified_namebias
ş
Ľ
__inference_save_fn_225926
checkpoint_keyP
Lmutablehashtable_lookup_table_export_values_lookuptableexportv2_table_handle
identity

identity_1

identity_2

identity_3

identity_4

identity_5	˘?MutableHashTable_lookup_table_export_values/LookupTableExportV2
?MutableHashTable_lookup_table_export_values/LookupTableExportV2LookupTableExportV2Lmutablehashtable_lookup_table_export_values_lookuptableexportv2_table_handle",/job:localhost/replica:0/task:0/device:CPU:0*
Tkeys0*
Tvalues0	*
_output_shapes

::K
add/yConst*
_output_shapes
: *
dtype0*
valueB B-keysK
addAddcheckpoint_keyadd/y:output:0*
T0*
_output_shapes
: O
add_1/yConst*
_output_shapes
: *
dtype0*
valueB B-valuesO
add_1Addcheckpoint_keyadd_1/y:output:0*
T0*
_output_shapes
: E
IdentityIdentityadd:z:0^NoOp*
T0*
_output_shapes
: F
ConstConst*
_output_shapes
: *
dtype0*
valueB B N

Identity_1IdentityConst:output:0^NoOp*
T0*
_output_shapes
: 

Identity_2IdentityFMutableHashTable_lookup_table_export_values/LookupTableExportV2:keys:0^NoOp*
T0*
_output_shapes
:I

Identity_3Identity	add_1:z:0^NoOp*
T0*
_output_shapes
: H
Const_1Const*
_output_shapes
: *
dtype0*
valueB B P

Identity_4IdentityConst_1:output:0^NoOp*
T0*
_output_shapes
: 

Identity_5IdentityHMutableHashTable_lookup_table_export_values/LookupTableExportV2:values:0^NoOp*
T0	*
_output_shapes
:
NoOpNoOp@^MutableHashTable_lookup_table_export_values/LookupTableExportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 2
?MutableHashTable_lookup_table_export_values/LookupTableExportV2?MutableHashTable_lookup_table_export_values/LookupTableExportV2:F B

_output_shapes
: 
(
_user_specified_namecheckpoint_key
Ç-
â
while_body_222641
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙|
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¸
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Y
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ž
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_splits
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
while/SigmoidSigmoidwhile/add:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙u
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙p
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙l
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙V

while/TanhTanhwhile/add_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙P
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?l
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙i
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙¸
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/add_3:z:0*
_output_shapes
: *
element_dtype0:éčŇO
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: O
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: `
while/Identity_4Identitywhile/add_3:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Y
_input_shapesH
F: : : : :˙˙˙˙˙˙˙˙˙: : :
::
::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
:!

_output_shapes	
::&	"
 
_output_shapes
:
:!


_output_shapes	
:
´
_
while_cond_false_222414+
'while_cond_identity_while_placeholder_3

while_cond_identity
R
while/cond/ConstConst*
_output_shapes
: *
dtype0
*
value	B
 Zi
while/cond/IdentityIdentity'while_cond_identity_while_placeholder_3*
T0
*
_output_shapes
: "3
while_cond_identitywhile/cond/Identity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 

_output_shapes
: 
ô	
Ţ
while_cond_223422
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_223422___redundant_placeholder04
0while_while_cond_223422___redundant_placeholder14
0while_while_cond_223422___redundant_placeholder24
0while_while_cond_223422___redundant_placeholder34
0while_while_cond_223422___redundant_placeholder4
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2: : : : :˙˙˙˙˙˙˙˙˙: ::::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
î	
Ë
&__inference_gru_5_layer_call_fn_225029
inputs_0
unknown:

	unknown_0:

	unknown_1:	
identity

identity_1˘StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *I
_output_shapes7
5:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_gru_5_layer_call_and_return_conditional_losses_223728}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs_0
Ć
Ď
,while_TensorArrayV2Write_1_cond_false_222396/
+while_tensorarrayv2write_1_cond_placeholder@
<while_tensorarrayv2write_1_cond_identity_while_placeholder_2,
(while_tensorarrayv2write_1_cond_identity
(while/TensorArrayV2Write_1/cond/IdentityIdentity<while_tensorarrayv2write_1_cond_identity_while_placeholder_2*
T0*
_output_shapes
: "]
(while_tensorarrayv2write_1_cond_identity1while/TensorArrayV2Write_1/cond/Identity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : 

_output_shapes
: :

_output_shapes
: 
ź
ć

:__inference___backward_gpu_gru_with_fallback_224500_224636
placeholder
placeholder_1
placeholder_2
placeholder_3/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_7_grad_invertpermutation_transpose_7_perm)
%gradients_squeeze_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙n
gradients/grad_ys_1Identityplaceholder_1*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙a
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙O
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: 
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
::íĎ
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:Ť
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
shrink_axis_mask
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:Á
$gradients/transpose_7_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
::íĎĽ
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_7_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙a
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: g
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:ô
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*X
_output_shapesF
D:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: :°đ*
rnn_modegru
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ú
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
::íĎĆ
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: g
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:@i
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:@i
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:@h
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:h
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:h
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:h
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::ç
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes

:ë
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes

:ë
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes

:ë
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes

:@ë
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:@ë
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:@ę
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:ę
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:ę
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:ę
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:í
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:í
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Ľ
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
i
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:˘
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes	
:i
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:˘
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:i
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:˘
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¤
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ľ
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ľ
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:š
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:š
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:š
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:š
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:š
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:š
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:0
gradients/split_grad/concatConcatV2(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0* 
_output_shapes
:

gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ˘
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	|
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙u

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g

Identity_2Identity$gradients/split_grad/concat:output:0*
T0* 
_output_shapes
:
i

Identity_3Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
i

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0*
T0*
_output_shapes
:	"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*Ż
_input_shapes
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙::˙˙˙˙˙˙˙˙˙: ::˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: :°đ::˙˙˙˙˙˙˙˙˙: ::::::: : : *<
api_implements*(gru_2335fbf9-8a5a-435e-acc1-6b0e0fd5358f*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_224635*
go_backwards( *

time_major( :. *
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:;7
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :;7
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: 

_output_shapes
::2.
,
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :

_output_shapes
::;	7
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:2
.
,
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :#

_output_shapes
	:°đ: 

_output_shapes
::.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
¸?
ź
&__forward_gpu_gru_with_fallback_225415

inputs
init_h_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
cudnnrnn
transpose_7_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
cudnnrnn_input_c

concat
transpose_perm

init_h
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dimc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : r

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*8
_output_shapes&
$:
:
:
*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*8
_output_shapes&
$:
:
:
*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:0S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*>
_output_shapes,
*::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:@a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:@a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:@\
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:\
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:]

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:]

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ż
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Ů
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*S
_output_shapesA
?:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ć
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙q
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g

Identity_1Identitytranspose_7:y:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:
:
:	*<
api_implements*(gru_763ea995-9cec-46e8-a459-24ea90b94caa*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_225280_225416*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_h:HD
 
_output_shapes
:

 
_user_specified_namekernel:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	

_user_specified_namebias
Ç-
â
while_body_224711
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙|
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¸
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Y
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ž
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_splits
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
while/SigmoidSigmoidwhile/add:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙u
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙p
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙l
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙V

while/TanhTanhwhile/add_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙P
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?l
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙i
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙¸
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/add_3:z:0*
_output_shapes
: *
element_dtype0:éčŇO
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: O
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: `
while/Identity_4Identitywhile/add_3:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Y
_input_shapesH
F: : : : :˙˙˙˙˙˙˙˙˙: : :
::
::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
:!

_output_shapes	
::&	"
 
_output_shapes
:
:!


_output_shapes	
:
Ç-
â
while_body_224334
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙|
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¸
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Y
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ž
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_splits
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
while/SigmoidSigmoidwhile/add:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙u
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙p
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙l
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙V

while/TanhTanhwhile/add_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙P
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?l
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙i
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙¸
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/add_3:z:0*
_output_shapes
: *
element_dtype0:éčŇO
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: O
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: `
while/Identity_4Identitywhile/add_3:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Y
_input_shapesH
F: : : : :˙˙˙˙˙˙˙˙˙: : :
::
::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
:!

_output_shapes	
::&	"
 
_output_shapes
:
:!


_output_shapes	
:
ô	
Ţ
while_cond_222640
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_222640___redundant_placeholder04
0while_while_cond_222640___redundant_placeholder14
0while_while_cond_222640___redundant_placeholder24
0while_while_cond_222640___redundant_placeholder34
0while_while_cond_222640___redundant_placeholder4
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2: : : : :˙˙˙˙˙˙˙˙˙: ::::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
Č
Ń
A__inference_gru_5_layer_call_and_return_conditional_losses_223728

inputs0
read_readvariableop_resource:
2
read_1_readvariableop_resource:
1
read_2_readvariableop_resource:	

identity_3

identity_4˘Read/ReadVariableOp˘Read_1/ReadVariableOp˘Read_2/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::íĎ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙r
Read/ReadVariableOpReadVariableOpread_readvariableop_resource* 
_output_shapes
:
*
dtype0\
IdentityIdentityRead/ReadVariableOp:value:0*
T0* 
_output_shapes
:
v
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource* 
_output_shapes
:
*
dtype0`

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
u
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes
:	*
dtype0_

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	
PartitionedCallPartitionedCallinputszeros:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *_
_output_shapesM
K:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *(
f#R!
__inference_standard_gru_223512w

Identity_3IdentityPartitionedCall:output:1^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙j

Identity_4IdentityPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ď
Ú
__inference_restore_fn_225934
restored_tensors_0
restored_tensors_1	C
?mutablehashtable_table_restore_lookuptableimportv2_table_handle
identity˘2MutableHashTable_table_restore/LookupTableImportV2
2MutableHashTable_table_restore/LookupTableImportV2LookupTableImportV2?mutablehashtable_table_restore_lookuptableimportv2_table_handlerestored_tensors_0restored_tensors_1",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: {
NoOpNoOp3^MutableHashTable_table_restore/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

::: 2h
2MutableHashTable_table_restore/LookupTableImportV22MutableHashTable_table_restore/LookupTableImportV2:L H

_output_shapes
:
,
_user_specified_namerestored_tensors_0:LH

_output_shapes
:
,
_user_specified_namerestored_tensors_1
Ç-
â
while_body_223423
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙|
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¸
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Y
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ž
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_splits
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
while/SigmoidSigmoidwhile/add:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙u
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙p
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙l
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙V

while/TanhTanhwhile/add_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙P
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?l
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙i
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙¸
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/add_3:z:0*
_output_shapes
: *
element_dtype0:éčŇO
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: O
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: `
while/Identity_4Identitywhile/add_3:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Y
_input_shapesH
F: : : : :˙˙˙˙˙˙˙˙˙: : :
::
::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
:!

_output_shapes	
::&	"
 
_output_shapes
:
:!


_output_shapes	
:
ź
ć

:__inference___backward_gpu_gru_with_fallback_223966_224102
placeholder
placeholder_1
placeholder_2
placeholder_3/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_7_grad_invertpermutation_transpose_7_perm)
%gradients_squeeze_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙n
gradients/grad_ys_1Identityplaceholder_1*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙a
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙O
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: 
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
::íĎ
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:Ť
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
shrink_axis_mask
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:Á
$gradients/transpose_7_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
::íĎĽ
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_7_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙a
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: g
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:ô
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*X
_output_shapesF
D:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: :°đ*
rnn_modegru
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ú
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
::íĎĆ
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: g
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:@i
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:@i
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:@h
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:h
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:h
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:h
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::ç
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes

:ë
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes

:ë
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes

:ë
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes

:@ë
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:@ë
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:@ę
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:ę
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:ę
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:ę
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:í
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:í
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Ľ
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
i
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:˘
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes	
:i
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:˘
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:i
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:˘
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¤
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ľ
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ľ
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:š
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:š
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:š
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:š
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:š
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:š
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:0
gradients/split_grad/concatConcatV2(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0* 
_output_shapes
:

gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ˘
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	|
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙u

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g

Identity_2Identity$gradients/split_grad/concat:output:0*
T0* 
_output_shapes
:
i

Identity_3Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
i

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0*
T0*
_output_shapes
:	"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*Ż
_input_shapes
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙::˙˙˙˙˙˙˙˙˙: ::˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: :°đ::˙˙˙˙˙˙˙˙˙: ::::::: : : *<
api_implements*(gru_5990cea1-926c-4fff-8fed-ef3715a772c7*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_224101*
go_backwards( *

time_major( :. *
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:;7
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :;7
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: 

_output_shapes
::2.
,
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :

_output_shapes
::;	7
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:2
.
,
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :#

_output_shapes
	:°đ: 

_output_shapes
::.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 

G
__inference__creator_225870
identity: ˘MutableHashTable
MutableHashTableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name
table_1866*
value_dtype0	]
IdentityIdentityMutableHashTable:table_handle:0^NoOp*
T0*
_output_shapes
: Y
NoOpNoOp^MutableHashTable*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2$
MutableHashTableMutableHashTable
Ę
´
$__inference_signature_wrapper_222567

input_text
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:	-
	unknown_4:

	unknown_5:

	unknown_6:	
	unknown_7	
	unknown_8:	/
	unknown_9:


unknown_10:


unknown_11:	

unknown_12:


unknown_13:


unknown_14:	

unknown_15:


unknown_16:	/

unknown_17:/

unknown_18	

unknown_19

unknown_20

unknown_21	

unknown_22
identity

identity_1˘StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCall
input_textunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22*$
Tin
2					*
Tout
2*
_collective_manager_ids
 *L
_output_shapes:
8:'˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*0
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *(
f#R!
__inference_tf_translate_222510
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*=
_output_shapes+
):'˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙m

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
#
_output_shapes
:˙˙˙˙˙˙˙˙˙
$
_user_specified_name
input_text:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
Đ
Ó
A__inference_gru_4_layer_call_and_return_conditional_losses_225016
inputs_00
read_readvariableop_resource:
2
read_1_readvariableop_resource:
1
read_2_readvariableop_resource:	

identity_3

identity_4˘Read/ReadVariableOp˘Read_1/ReadVariableOp˘Read_2/ReadVariableOpK
ShapeShapeinputs_0*
T0*
_output_shapes
::íĎ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙r
Read/ReadVariableOpReadVariableOpread_readvariableop_resource* 
_output_shapes
:
*
dtype0\
IdentityIdentityRead/ReadVariableOp:value:0*
T0* 
_output_shapes
:
v
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource* 
_output_shapes
:
*
dtype0`

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
u
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes
:	*
dtype0_

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	
PartitionedCallPartitionedCallinputs_0zeros:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *_
_output_shapesM
K:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *(
f#R!
__inference_standard_gru_224800w

Identity_3IdentityPartitionedCall:output:1^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙j

Identity_4IdentityPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:_ [
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs_0
>
Ł
__inference_standard_gru_225580

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3O
unstackUnpackbias*
T0*"
_output_shapes
::*	
numc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙P
ShapeShapetranspose:y:0*
T0*
_output_shapes
::íĎ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙˛
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ŕ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ę
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙i
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ś
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ź
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_splita
addAddV2split:output:0split_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙N
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
add_1AddV2split:output:1split_1:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙R
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
mulMulSigmoid_1:y:0split_1:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
add_2AddV2split:output:2mul:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙J
TanhTanh	add_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙T
mul_1MulSigmoid:y:0init_h*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Z
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙R
mul_2Mulsub:z:0Tanh:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙W
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ś
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ş
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*Z
_output_shapesH
F: : : : :˙˙˙˙˙˙˙˙˙: : :
::
:* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_225491*
condR
while_cond_225490*Y
output_shapesH
F: : : : :˙˙˙˙˙˙˙˙˙: : :
::
:*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ě
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?a
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g

Identity_1Identitytranspose_1:y:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙Y

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:
:
:	*<
api_implements*(gru_07955a2a-cea5-4ff8-b194-1e634df5f32e*
api_preferred_deviceCPU*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_h:HD
 
_output_shapes
:

 
_user_specified_namekernel:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	

_user_specified_namebias
>
Ł
__inference_standard_gru_224800

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3O
unstackUnpackbias*
T0*"
_output_shapes
::*	
numc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙P
ShapeShapetranspose:y:0*
T0*
_output_shapes
::íĎ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙˛
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ŕ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ę
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙i
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ś
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ź
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_splita
addAddV2split:output:0split_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙N
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
add_1AddV2split:output:1split_1:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙R
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
mulMulSigmoid_1:y:0split_1:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
add_2AddV2split:output:2mul:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙J
TanhTanh	add_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙T
mul_1MulSigmoid:y:0init_h*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Z
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙R
mul_2Mulsub:z:0Tanh:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙W
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ś
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ş
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*Z
_output_shapesH
F: : : : :˙˙˙˙˙˙˙˙˙: : :
::
:* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_224711*
condR
while_cond_224710*Y
output_shapesH
F: : : : :˙˙˙˙˙˙˙˙˙: : :
::
:*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ě
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?a
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g

Identity_1Identitytranspose_1:y:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙Y

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:
:
:	*<
api_implements*(gru_d083f546-8138-4350-a13c-d60941c835e9*
api_preferred_deviceCPU*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_h:HD
 
_output_shapes
:

 
_user_specified_namekernel:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	

_user_specified_namebias
ô	
Ţ
while_cond_221874
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_221874___redundant_placeholder04
0while_while_cond_221874___redundant_placeholder14
0while_while_cond_221874___redundant_placeholder24
0while_while_cond_221874___redundant_placeholder34
0while_while_cond_221874___redundant_placeholder4
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2: : : : :˙˙˙˙˙˙˙˙˙: ::::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:

-
__inference__destroyer_225814
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
>
Ł
__inference_standard_gru_222730

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3O
unstackUnpackbias*
T0*"
_output_shapes
::*	
numc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙P
ShapeShapetranspose:y:0*
T0*
_output_shapes
::íĎ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙˛
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ŕ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ę
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙i
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ś
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ź
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_splita
addAddV2split:output:0split_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙N
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
add_1AddV2split:output:1split_1:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙R
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
mulMulSigmoid_1:y:0split_1:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
add_2AddV2split:output:2mul:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙J
TanhTanh	add_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙T
mul_1MulSigmoid:y:0init_h*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Z
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙R
mul_2Mulsub:z:0Tanh:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙W
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ś
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ş
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*Z
_output_shapesH
F: : : : :˙˙˙˙˙˙˙˙˙: : :
::
:* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_222641*
condR
while_cond_222640*Y
output_shapesH
F: : : : :˙˙˙˙˙˙˙˙˙: : :
::
:*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ě
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?a
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g

Identity_1Identitytranspose_1:y:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙Y

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:
:
:	*<
api_implements*(gru_dc985ab4-8740-4360-ac37-7c2f70f73809*
api_preferred_deviceCPU*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_h:HD
 
_output_shapes
:

 
_user_specified_namekernel:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	

_user_specified_namebias
Ç-
â
while_body_221436
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙|
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¸
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Y
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ž
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_splits
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
while/SigmoidSigmoidwhile/add:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙u
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙p
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙l
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙V

while/TanhTanhwhile/add_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙P
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?l
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙i
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙¸
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/add_3:z:0*
_output_shapes
: *
element_dtype0:éčŇO
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: O
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: `
while/Identity_4Identitywhile/add_3:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Y
_input_shapesH
F: : : : :˙˙˙˙˙˙˙˙˙: : :
::
::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
:!

_output_shapes	
::&	"
 
_output_shapes
:
:!


_output_shapes	
:
ź
ć

:__inference___backward_gpu_gru_with_fallback_223184_223320
placeholder
placeholder_1
placeholder_2
placeholder_3/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_7_grad_invertpermutation_transpose_7_perm)
%gradients_squeeze_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙n
gradients/grad_ys_1Identityplaceholder_1*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙a
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙O
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: 
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
::íĎ
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:Ť
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
shrink_axis_mask
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:Á
$gradients/transpose_7_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
::íĎĽ
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_7_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙a
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: g
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:ô
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*X
_output_shapesF
D:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: :°đ*
rnn_modegru
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ú
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
::íĎĆ
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: g
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:@i
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:@i
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:@h
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:h
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:h
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:h
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::ç
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes

:ë
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes

:ë
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes

:ë
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes

:@ë
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:@ë
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:@ę
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:ę
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:ę
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:ę
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:í
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:í
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Ľ
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
i
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:˘
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes	
:i
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:˘
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:i
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:˘
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¤
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ľ
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ľ
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:š
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:š
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:š
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:š
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:š
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:š
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:0
gradients/split_grad/concatConcatV2(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0* 
_output_shapes
:

gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ˘
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	|
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙u

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g

Identity_2Identity$gradients/split_grad/concat:output:0*
T0* 
_output_shapes
:
i

Identity_3Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
i

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0*
T0*
_output_shapes
:	"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*Ż
_input_shapes
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙::˙˙˙˙˙˙˙˙˙: ::˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: :°đ::˙˙˙˙˙˙˙˙˙: ::::::: : : *<
api_implements*(gru_5976a3ee-e574-4dbf-b0cb-b865ba03a7ab*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_223319*
go_backwards( *

time_major( :. *
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:;7
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :;7
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: 

_output_shapes
::2.
,
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :

_output_shapes
::;	7
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:2
.
,
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :#

_output_shapes
	:°đ: 

_output_shapes
::.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
¸?
ź
&__forward_gpu_gru_with_fallback_221737

inputs
init_h_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
cudnnrnn
transpose_7_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
cudnnrnn_input_c

concat
transpose_perm

init_h
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dimc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : r

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*8
_output_shapes&
$:
:
:
*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*8
_output_shapes&
$:
:
:
*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:0S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*>
_output_shapes,
*::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:@a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:@a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:@\
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:\
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:]

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:]

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ż
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Ů
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*S
_output_shapesA
?:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ć
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙q
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g

Identity_1Identitytranspose_7:y:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:
:
:	*<
api_implements*(gru_c0322139-5640-46e6-97ba-0dcf58cc8db4*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_221602_221738*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_h:HD
 
_output_shapes
:

 
_user_specified_namekernel:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	

_user_specified_namebias

ř
__inference__initializer_2258277
3key_value_init1847_lookuptableimportv2_table_handle/
+key_value_init1847_lookuptableimportv2_keys1
-key_value_init1847_lookuptableimportv2_values	
identity˘&key_value_init1847/LookupTableImportV2ű
&key_value_init1847/LookupTableImportV2LookupTableImportV23key_value_init1847_lookuptableimportv2_table_handle+key_value_init1847_lookuptableimportv2_keys-key_value_init1847_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: o
NoOpNoOp'^key_value_init1847/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: :+:+2P
&key_value_init1847/LookupTableImportV2&key_value_init1847/LookupTableImportV2: 

_output_shapes
:+: 

_output_shapes
:+
É5
Ż
(__inference_gpu_gru_with_fallback_225279

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : p

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*8
_output_shapes&
$:
:
:
*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*8
_output_shapes&
$:
:
:
*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:0S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*>
_output_shapes,
*::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:@a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:@a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:@\
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:\
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:]

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:]

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ě
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes
	:°đU
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Ő
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*S
_output_shapesA
?:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ć
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙q
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g

Identity_1Identitytranspose_7:y:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:
:
:	*<
api_implements*(gru_763ea995-9cec-46e8-a459-24ea90b94caa*
api_preferred_deviceGPU*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_h:HD
 
_output_shapes
:

 
_user_specified_namekernel:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	

_user_specified_namebias
ô	
Ţ
while_cond_225113
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_225113___redundant_placeholder04
0while_while_cond_225113___redundant_placeholder14
0while_while_cond_225113___redundant_placeholder24
0while_while_cond_225113___redundant_placeholder34
0while_while_cond_225113___redundant_placeholder4
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2: : : : :˙˙˙˙˙˙˙˙˙: ::::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
É5
Ż
(__inference_gpu_gru_with_fallback_221601

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : p

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*8
_output_shapes&
$:
:
:
*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*8
_output_shapes&
$:
:
:
*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:0S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*>
_output_shapes,
*::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:@a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:@a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:@\
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:\
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:]

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:]

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ě
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes
	:°đU
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Ő
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*S
_output_shapesA
?:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ć
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙q
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g

Identity_1Identitytranspose_7:y:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:
:
:	*<
api_implements*(gru_c0322139-5640-46e6-97ba-0dcf58cc8db4*
api_preferred_deviceGPU*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_h:HD
 
_output_shapes
:

 
_user_specified_namekernel:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	

_user_specified_namebias

/
__inference__initializer_225875
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
¸?
ź
&__forward_gpu_gru_with_fallback_224101

inputs
init_h_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
cudnnrnn
transpose_7_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
cudnnrnn_input_c

concat
transpose_perm

init_h
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dimc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : r

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*8
_output_shapes&
$:
:
:
*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*8
_output_shapes&
$:
:
:
*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:0S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*>
_output_shapes,
*::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:@a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:@a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:@\
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:\
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:]

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:]

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ż
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Ů
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*S
_output_shapesA
?:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ć
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙q
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g

Identity_1Identitytranspose_7:y:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:
:
:	*<
api_implements*(gru_5990cea1-926c-4fff-8fed-ef3715a772c7*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_223966_224102*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_h:HD
 
_output_shapes
:

 
_user_specified_namekernel:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	

_user_specified_namebias
ť
`
while_cond_true_221783-
)while_cond_logicalnot_while_placeholder_3

while_cond_identity
f
while/cond/LogicalNot
LogicalNot)while_cond_logicalnot_while_placeholder_3*
_output_shapes
: [
while/cond/IdentityIdentitywhile/cond/LogicalNot:y:0*
T0
*
_output_shapes
: "3
while_cond_identitywhile/cond/Identity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 

_output_shapes
: 
É
ŕ
+while_TensorArrayV2Write_1_cond_true_2223959
5while_tensorarrayv2write_1_cond_add_while_placeholderH
Dwhile_tensorarrayv2write_1_cond_tensorlistresize_while_placeholder_2,
(while_tensorarrayv2write_1_cond_identityg
%while/TensorArrayV2Write_1/cond/add/yConst*
_output_shapes
: *
dtype0*
value	B :´
#while/TensorArrayV2Write_1/cond/addAddV25while_tensorarrayv2write_1_cond_add_while_placeholder.while/TensorArrayV2Write_1/cond/add/y:output:0*
T0*
_output_shapes
: Ë
0while/TensorArrayV2Write_1/cond/TensorListResizeTensorListResizeDwhile_tensorarrayv2write_1_cond_tensorlistresize_while_placeholder_2'while/TensorArrayV2Write_1/cond/add:z:0*
_output_shapes
: 
(while/TensorArrayV2Write_1/cond/IdentityIdentity@while/TensorArrayV2Write_1/cond/TensorListResize:output_handle:0*
T0*
_output_shapes
: "]
(while_tensorarrayv2write_1_cond_identity1while/TensorArrayV2Write_1/cond/Identity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : 

_output_shapes
: :

_output_shapes
: 

M
while_cond_true_222413
while_cond_placeholder

while_cond_identity
R
while/cond/ConstConst*
_output_shapes
: *
dtype0
*
value	B
 Z[
while/cond/IdentityIdentitywhile/cond/Const:output:0*
T0
*
_output_shapes
: "3
while_cond_identitywhile/cond/Identity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 

_output_shapes
: 
Ç-
â
while_body_223018
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙|
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¸
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Y
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ž
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_splits
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
while/SigmoidSigmoidwhile/add:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙u
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙p
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙l
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙V

while/TanhTanhwhile/add_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙P
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?l
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙i
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙¸
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/add_3:z:0*
_output_shapes
: *
element_dtype0:éčŇO
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: O
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: `
while/Identity_4Identitywhile/add_3:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Y
_input_shapesH
F: : : : :˙˙˙˙˙˙˙˙˙: : :
::
::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
:!

_output_shapes	
::&	"
 
_output_shapes
:
:!


_output_shapes	
:
ś
Ç
*while_TensorArrayV2Write_cond_false_222311-
)while_tensorarrayv2write_cond_placeholder>
:while_tensorarrayv2write_cond_identity_while_placeholder_1*
&while_tensorarrayv2write_cond_identity
&while/TensorArrayV2Write/cond/IdentityIdentity:while_tensorarrayv2write_cond_identity_while_placeholder_1*
T0*
_output_shapes
: "Y
&while_tensorarrayv2write_cond_identity/while/TensorArrayV2Write/cond/Identity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : 

_output_shapes
: :

_output_shapes
: 
É5
Ż
(__inference_gpu_gru_with_fallback_225656

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : p

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*8
_output_shapes&
$:
:
:
*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*8
_output_shapes&
$:
:
:
*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:0S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*>
_output_shapes,
*::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:@a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:@a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:@\
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:\
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:]

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:]

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ě
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes
	:°đU
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Ő
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*S
_output_shapesA
?:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ć
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙q
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g

Identity_1Identitytranspose_7:y:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:
:
:	*<
api_implements*(gru_07955a2a-cea5-4ff8-b194-1e634df5f32e*
api_preferred_deviceGPU*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_h:HD
 
_output_shapes
:

 
_user_specified_namekernel:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	

_user_specified_namebias
É5
Ż
(__inference_gpu_gru_with_fallback_223965

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : p

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*8
_output_shapes&
$:
:
:
*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*8
_output_shapes&
$:
:
:
*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:0S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*>
_output_shapes,
*::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:@a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:@a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:@\
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:\
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:]

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:]

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ě
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes
	:°đU
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Ő
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*S
_output_shapesA
?:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ć
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙q
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g

Identity_1Identitytranspose_7:y:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:
:
:	*<
api_implements*(gru_5990cea1-926c-4fff-8fed-ef3715a772c7*
api_preferred_deviceGPU*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_h:HD
 
_output_shapes
:

 
_user_specified_namekernel:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	

_user_specified_namebias
5
Ż
(__inference_gpu_gru_with_fallback_222040

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : p

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*8
_output_shapes&
$:
:
:
*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*8
_output_shapes&
$:
:
:
*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:0S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*>
_output_shapes,
*::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:@a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:@a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:@\
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:\
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:]

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:]

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ě
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes
	:°đU
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Ě
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*J
_output_shapes8
6:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ć
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙q
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^

Identity_1Identitytranspose_7:y:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:
:
:	*<
api_implements*(gru_419b21df-e3dd-4c73-9336-81a862f3d97b*
api_preferred_deviceGPU*
go_backwards( *

time_major( :T P
,
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_h:HD
 
_output_shapes
:

 
_user_specified_namekernel:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	

_user_specified_namebias
Č
Ń
A__inference_gru_4_layer_call_and_return_conditional_losses_222946

inputs0
read_readvariableop_resource:
2
read_1_readvariableop_resource:
1
read_2_readvariableop_resource:	

identity_3

identity_4˘Read/ReadVariableOp˘Read_1/ReadVariableOp˘Read_2/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::íĎ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙r
Read/ReadVariableOpReadVariableOpread_readvariableop_resource* 
_output_shapes
:
*
dtype0\
IdentityIdentityRead/ReadVariableOp:value:0*
T0* 
_output_shapes
:
v
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource* 
_output_shapes
:
*
dtype0`

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
u
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes
:	*
dtype0_

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	
PartitionedCallPartitionedCallinputszeros:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *_
_output_shapesM
K:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *(
f#R!
__inference_standard_gru_222730w

Identity_3IdentityPartitionedCall:output:1^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙j

Identity_4IdentityPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ź
ć

:__inference___backward_gpu_gru_with_fallback_224877_225013
placeholder
placeholder_1
placeholder_2
placeholder_3/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_7_grad_invertpermutation_transpose_7_perm)
%gradients_squeeze_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙n
gradients/grad_ys_1Identityplaceholder_1*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙a
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙O
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: 
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
::íĎ
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:Ť
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
shrink_axis_mask
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:Á
$gradients/transpose_7_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
::íĎĽ
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_7_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙a
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: g
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:ô
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*X
_output_shapesF
D:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: :°đ*
rnn_modegru
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ú
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
::íĎĆ
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: g
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:@i
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:@i
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:@h
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:h
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:h
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:h
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::ç
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes

:ë
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes

:ë
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes

:ë
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes

:@ë
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:@ë
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:@ę
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:ę
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:ę
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:ę
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:í
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:í
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Ľ
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
i
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:˘
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes	
:i
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:˘
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:i
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:˘
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¤
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ľ
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ľ
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:š
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:š
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:š
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:š
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:š
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:š
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:0
gradients/split_grad/concatConcatV2(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0* 
_output_shapes
:

gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ˘
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	|
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙u

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g

Identity_2Identity$gradients/split_grad/concat:output:0*
T0* 
_output_shapes
:
i

Identity_3Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
i

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0*
T0*
_output_shapes
:	"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*Ż
_input_shapes
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙::˙˙˙˙˙˙˙˙˙: ::˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: :°đ::˙˙˙˙˙˙˙˙˙: ::::::: : : *<
api_implements*(gru_d083f546-8138-4350-a13c-d60941c835e9*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_225012*
go_backwards( *

time_major( :. *
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:;7
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :;7
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: 

_output_shapes
::2.
,
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :

_output_shapes
::;	7
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:2
.
,
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :#

_output_shapes
	:°đ: 

_output_shapes
::.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
ô	
Ţ
while_cond_223017
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_223017___redundant_placeholder04
0while_while_cond_223017___redundant_placeholder14
0while_while_cond_223017___redundant_placeholder24
0while_while_cond_223017___redundant_placeholder34
0while_while_cond_223017___redundant_placeholder4
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2: : : : :˙˙˙˙˙˙˙˙˙: ::::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:

-
__inference__destroyer_225880
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
î	
Ë
&__inference_gru_4_layer_call_fn_224262
inputs_0
unknown:

	unknown_0:

	unknown_1:	
identity

identity_1˘StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *I
_output_shapes7
5:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_gru_4_layer_call_and_return_conditional_losses_223323}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs_0
>
Ł
__inference_standard_gru_221525

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3O
unstackUnpackbias*
T0*"
_output_shapes
::*	
numc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙P
ShapeShapetranspose:y:0*
T0*
_output_shapes
::íĎ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙˛
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ŕ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ę
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙i
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ś
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ź
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_splita
addAddV2split:output:0split_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙N
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
add_1AddV2split:output:1split_1:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙R
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
mulMulSigmoid_1:y:0split_1:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
add_2AddV2split:output:2mul:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙J
TanhTanh	add_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙T
mul_1MulSigmoid:y:0init_h*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Z
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙R
mul_2Mulsub:z:0Tanh:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙W
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ś
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ş
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*Z
_output_shapesH
F: : : : :˙˙˙˙˙˙˙˙˙: : :
::
:* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_221436*
condR
while_cond_221435*Y
output_shapesH
F: : : : :˙˙˙˙˙˙˙˙˙: : :
::
:*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ě
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?a
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g

Identity_1Identitytranspose_1:y:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙Y

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:
:
:	*<
api_implements*(gru_c0322139-5640-46e6-97ba-0dcf58cc8db4*
api_preferred_deviceCPU*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_h:HD
 
_output_shapes
:

 
_user_specified_namekernel:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	

_user_specified_namebias
>
Ł
__inference_standard_gru_223889

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3O
unstackUnpackbias*
T0*"
_output_shapes
::*	
numc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙P
ShapeShapetranspose:y:0*
T0*
_output_shapes
::íĎ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙˛
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ŕ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ę
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙i
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ś
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ź
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_splita
addAddV2split:output:0split_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙N
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
add_1AddV2split:output:1split_1:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙R
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
mulMulSigmoid_1:y:0split_1:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
add_2AddV2split:output:2mul:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙J
TanhTanh	add_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙T
mul_1MulSigmoid:y:0init_h*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Z
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙R
mul_2Mulsub:z:0Tanh:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙W
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ś
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ş
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*Z
_output_shapesH
F: : : : :˙˙˙˙˙˙˙˙˙: : :
::
:* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_223800*
condR
while_cond_223799*Y
output_shapesH
F: : : : :˙˙˙˙˙˙˙˙˙: : :
::
:*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ě
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?a
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g

Identity_1Identitytranspose_1:y:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙Y

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:
:
:	*<
api_implements*(gru_5990cea1-926c-4fff-8fed-ef3715a772c7*
api_preferred_deviceCPU*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_h:HD
 
_output_shapes
:

 
_user_specified_namekernel:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	

_user_specified_namebias
Ç-
â
while_body_225114
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙|
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¸
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Y
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ž
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_splits
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
while/SigmoidSigmoidwhile/add:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙u
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙p
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙l
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙V

while/TanhTanhwhile/add_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙P
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?l
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙i
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙¸
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/add_3:z:0*
_output_shapes
: *
element_dtype0:éčŇO
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: O
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: `
while/Identity_4Identitywhile/add_3:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Y
_input_shapesH
F: : : : :˙˙˙˙˙˙˙˙˙: : :
::
::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
:!

_output_shapes	
::&	"
 
_output_shapes
:
:!


_output_shapes	
:
Ě=
Ł
__inference_standard_gru_221964

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3O
unstackUnpackbias*
T0*"
_output_shapes
::*	
numc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙P
ShapeShapetranspose:y:0*
T0*
_output_shapes
::íĎ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙˛
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ŕ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ę
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙i
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ś
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ź
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_splita
addAddV2split:output:0split_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙N
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
add_1AddV2split:output:1split_1:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙R
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
mulMulSigmoid_1:y:0split_1:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
add_2AddV2split:output:2mul:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙J
TanhTanh	add_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙T
mul_1MulSigmoid:y:0init_h*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Z
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙R
mul_2Mulsub:z:0Tanh:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙W
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ś
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ş
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*Z
_output_shapesH
F: : : : :˙˙˙˙˙˙˙˙˙: : :
::
:* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_221875*
condR
while_cond_221874*Y
output_shapesH
F: : : : :˙˙˙˙˙˙˙˙˙: : :
::
:*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ă
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?a
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^

Identity_1Identitytranspose_1:y:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙Y

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:
:
:	*<
api_implements*(gru_419b21df-e3dd-4c73-9336-81a862f3d97b*
api_preferred_deviceCPU*
go_backwards( *

time_major( :T P
,
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_h:HD
 
_output_shapes
:

 
_user_specified_namekernel:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	

_user_specified_namebias
ăG

__inference_adapt_step_224184
iterator9
5none_lookup_table_find_lookuptablefindv2_table_handle:
6none_lookup_table_find_lookuptablefindv2_default_value	˘IteratorGetNext˘(None_lookup_table_find/LookupTableFindV2˘,None_lookup_table_insert/LookupTableInsertV2Š
IteratorGetNextIteratorGetNextiterator*
_class
loc:@iterator*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*"
output_shapes
:˙˙˙˙˙˙˙˙˙*
output_types
2]
StringStripStringStripIteratorGetNext:components:0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙[
StringJoin/inputs_0Const*
_output_shapes
: *
dtype0*
valueB B[START]Y
StringJoin/inputs_2Const*
_output_shapes
: *
dtype0*
valueB B[END]Ş

StringJoin
StringJoinStringJoin/inputs_0:output:0StringStrip:output:0StringJoin/inputs_2:output:0*
N*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	separator R
StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B 
StringSplit/StringSplitV2StringSplitV2StringJoin:output:0StringSplit/Const:output:0*<
_output_shapes*
(:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:p
StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       r
!StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ĺ
StringSplit/strided_sliceStridedSlice#StringSplit/StringSplitV2:indices:0(StringSplit/strided_slice/stack:output:0*StringSplit/strided_slice/stack_1:output:0*StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

begin_mask*
end_mask*
shrink_axis_maskk
!StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
StringSplit/strided_slice_1StridedSlice!StringSplit/StringSplitV2:shape:0*StringSplit/strided_slice_1/stack:output:0,StringSplit/strided_slice_1/stack_1:output:0,StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_maskŤ
BStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast"StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙˘
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast$StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: Đ
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
::íĎ
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ˘
KStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdUStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0UStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: 
PStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : Ť
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreaterTStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0YStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ×
KStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastRStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: 
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0WStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: 
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B : 
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2SStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0UStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: 
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulOStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: 
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximumHStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: 
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimumHStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: 
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 §
TStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙Ž
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ReshapeReshapeFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0]StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shape:output:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
OStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountWStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape:output:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0WStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
IStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ¨
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumVStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
MStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R 
IStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ˙
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2VStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙Ł
UniqueWithCountsUniqueWithCounts"StringSplit/StringSplitV2:values:0*
T0*A
_output_shapes/
-:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
out_idx0	Ą
(None_lookup_table_find/LookupTableFindV2LookupTableFindV25none_lookup_table_find_lookuptablefindv2_table_handleUniqueWithCounts:y:06none_lookup_table_find_lookuptablefindv2_default_value",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
:|
addAddV2UniqueWithCounts:count:01None_lookup_table_find/LookupTableFindV2:values:0*
T0	*
_output_shapes
:
,None_lookup_table_insert/LookupTableInsertV2LookupTableInsertV25none_lookup_table_find_lookuptablefindv2_table_handleUniqueWithCounts:y:0add:z:0)^None_lookup_table_find/LookupTableFindV2",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
 *(
_construction_contextkEagerRuntime*
_input_shapes
: : : 2"
IteratorGetNextIteratorGetNext2T
(None_lookup_table_find/LookupTableFindV2(None_lookup_table_find/LookupTableFindV22\
,None_lookup_table_insert/LookupTableInsertV2,None_lookup_table_insert/LookupTableInsertV2:( $
"
_user_specified_name
iterator:

_output_shapes
: 
ź
ć

:__inference___backward_gpu_gru_with_fallback_222807_222943
placeholder
placeholder_1
placeholder_2
placeholder_3/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_7_grad_invertpermutation_transpose_7_perm)
%gradients_squeeze_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙n
gradients/grad_ys_1Identityplaceholder_1*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙a
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙O
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: 
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
::íĎ
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:Ť
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
shrink_axis_mask
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:Á
$gradients/transpose_7_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
::íĎĽ
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_7_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙a
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: g
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:ô
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*X
_output_shapesF
D:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: :°đ*
rnn_modegru
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ú
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
::íĎĆ
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: g
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:@i
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:@i
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:@h
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:h
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:h
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:h
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::ç
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes

:ë
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes

:ë
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes

:ë
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes

:@ë
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:@ë
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:@ę
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:ę
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:ę
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:ę
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:í
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:í
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Ľ
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
i
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:˘
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes	
:i
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:˘
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:i
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:˘
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¤
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ľ
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ľ
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:š
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:š
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:š
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:š
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:š
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:š
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:0
gradients/split_grad/concatConcatV2(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0* 
_output_shapes
:

gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ˘
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	|
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙u

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g

Identity_2Identity$gradients/split_grad/concat:output:0*
T0* 
_output_shapes
:
i

Identity_3Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
i

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0*
T0*
_output_shapes
:	"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*Ż
_input_shapes
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙::˙˙˙˙˙˙˙˙˙: ::˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: :°đ::˙˙˙˙˙˙˙˙˙: ::::::: : : *<
api_implements*(gru_dc985ab4-8740-4360-ac37-7c2f70f73809*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_222942*
go_backwards( *

time_major( :. *
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:;7
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :;7
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: 

_output_shapes
::2.
,
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :

_output_shapes
::;	7
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:2
.
,
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :#

_output_shapes
	:°đ: 

_output_shapes
::.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
¸?
ź
&__forward_gpu_gru_with_fallback_225012

inputs
init_h_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
cudnnrnn
transpose_7_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
cudnnrnn_input_c

concat
transpose_perm

init_h
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dimc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : r

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*8
_output_shapes&
$:
:
:
*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*8
_output_shapes&
$:
:
:
*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:0S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*>
_output_shapes,
*::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:@a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:@a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:@\
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:\
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:]

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:]

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ż
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Ů
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*S
_output_shapesA
?:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ć
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙q
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g

Identity_1Identitytranspose_7:y:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:
:
:	*<
api_implements*(gru_d083f546-8138-4350-a13c-d60941c835e9*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_224877_225013*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_h:HD
 
_output_shapes
:

 
_user_specified_namekernel:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	

_user_specified_namebias
ąü
ç
while_body_221768
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3

while_placeholder_4
while_placeholder_5

while_placeholder_6	
while_range_limit_0K
Gwhile_notequal_text_vectorization_raggedtotensor_raggedtensortotensor_0	H
5while_decoder_2_embedding_5_embedding_lookup_221810_0:	/H
4while_decoder_2_gru_5_read_readvariableop_resource_0:
J
6while_decoder_2_gru_5_read_1_readvariableop_resource_0:
I
6while_decoder_2_gru_5_read_2_readvariableop_resource_0:	e
Qwhile_decoder_2_bahdanau_attention_3_dense_10_tensordot_readvariableop_resource_0:
e
Qwhile_decoder_2_bahdanau_attention_3_dense_11_tensordot_readvariableop_resource_0:
c
_while_decoder_2_bahdanau_attention_3_dense_11_tensordot_shape_encoder_2_gru_4_partitionedcall_0b
Swhile_decoder_2_bahdanau_attention_3_additive_attention_3_readvariableop_resource_0:	P
<while_decoder_2_dense_12_tensordot_readvariableop_resource_0:
O
<while_decoder_2_dense_13_tensordot_readvariableop_resource_0:	/H
:while_decoder_2_dense_13_biasadd_readvariableop_resource_0:/
while_equal_x_0	
while_add_range_delta_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5

while_identity_6
while_identity_7

while_identity_8	
while_range_limitI
Ewhile_notequal_text_vectorization_raggedtotensor_raggedtensortotensor	F
3while_decoder_2_embedding_5_embedding_lookup_221810:	/F
2while_decoder_2_gru_5_read_readvariableop_resource:
H
4while_decoder_2_gru_5_read_1_readvariableop_resource:
G
4while_decoder_2_gru_5_read_2_readvariableop_resource:	c
Owhile_decoder_2_bahdanau_attention_3_dense_10_tensordot_readvariableop_resource:
c
Owhile_decoder_2_bahdanau_attention_3_dense_11_tensordot_readvariableop_resource:
a
]while_decoder_2_bahdanau_attention_3_dense_11_tensordot_shape_encoder_2_gru_4_partitionedcall`
Qwhile_decoder_2_bahdanau_attention_3_additive_attention_3_readvariableop_resource:	N
:while_decoder_2_dense_12_tensordot_readvariableop_resource:
M
:while_decoder_2_dense_13_tensordot_readvariableop_resource:	/F
8while_decoder_2_dense_13_biasadd_readvariableop_resource:/
while_equal_x	
while_add_range_delta˘Hwhile/decoder_2/bahdanau_attention_3/additive_attention_3/ReadVariableOp˘Fwhile/decoder_2/bahdanau_attention_3/dense_10/Tensordot/ReadVariableOp˘Fwhile/decoder_2/bahdanau_attention_3/dense_11/Tensordot/ReadVariableOp˘1while/decoder_2/dense_12/Tensordot/ReadVariableOp˘/while/decoder_2/dense_13/BiasAdd/ReadVariableOp˘1while/decoder_2/dense_13/Tensordot/ReadVariableOp˘,while/decoder_2/embedding_5/embedding_lookup˘)while/decoder_2/gru_5/Read/ReadVariableOp˘+while/decoder_2/gru_5/Read_1/ReadVariableOp˘+while/decoder_2/gru_5/Read_2/ReadVariableOpR
while/NotEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R Ů
while/NotEqualNotEqualGwhile_notequal_text_vectorization_raggedtotensor_raggedtensortotensor_0while/NotEqual/y:output:0*
T0	*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
incompatible_shape_error( 
,while/decoder_2/embedding_5/embedding_lookupResourceGather5while_decoder_2_embedding_5_embedding_lookup_221810_0while_placeholder_6*
Tindices0	*F
_class<
:8loc:@while/decoder_2/embedding_5/embedding_lookup/221810*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0÷
5while/decoder_2/embedding_5/embedding_lookup/IdentityIdentity5while/decoder_2/embedding_5/embedding_lookup:output:0*
T0*F
_class<
:8loc:@while/decoder_2/embedding_5/embedding_lookup/221810*,
_output_shapes
:˙˙˙˙˙˙˙˙˙ş
7while/decoder_2/embedding_5/embedding_lookup/Identity_1Identity>while/decoder_2/embedding_5/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
)while/decoder_2/gru_5/Read/ReadVariableOpReadVariableOp4while_decoder_2_gru_5_read_readvariableop_resource_0* 
_output_shapes
:
*
dtype0
while/decoder_2/gru_5/IdentityIdentity1while/decoder_2/gru_5/Read/ReadVariableOp:value:0*
T0* 
_output_shapes
:
¤
+while/decoder_2/gru_5/Read_1/ReadVariableOpReadVariableOp6while_decoder_2_gru_5_read_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0
 while/decoder_2/gru_5/Identity_1Identity3while/decoder_2/gru_5/Read_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
Ł
+while/decoder_2/gru_5/Read_2/ReadVariableOpReadVariableOp6while_decoder_2_gru_5_read_2_readvariableop_resource_0*
_output_shapes
:	*
dtype0
 while/decoder_2/gru_5/Identity_2Identity3while/decoder_2/gru_5/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	§
%while/decoder_2/gru_5/PartitionedCallPartitionedCall@while/decoder_2/embedding_5/embedding_lookup/Identity_1:output:0while_placeholder_4'while/decoder_2/gru_5/Identity:output:0)while/decoder_2/gru_5/Identity_1:output:0)while/decoder_2/gru_5/Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *V
_output_shapesD
B:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *(
f#R!
__inference_standard_gru_221964Ú
Fwhile/decoder_2/bahdanau_attention_3/dense_10/Tensordot/ReadVariableOpReadVariableOpQwhile_decoder_2_bahdanau_attention_3_dense_10_tensordot_readvariableop_resource_0* 
_output_shapes
:
*
dtype0
<while/decoder_2/bahdanau_attention_3/dense_10/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
<while/decoder_2/bahdanau_attention_3/dense_10/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       Š
=while/decoder_2/bahdanau_attention_3/dense_10/Tensordot/ShapeShape.while/decoder_2/gru_5/PartitionedCall:output:1*
T0*
_output_shapes
::íĎ
Ewhile/decoder_2/bahdanau_attention_3/dense_10/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ó
@while/decoder_2/bahdanau_attention_3/dense_10/Tensordot/GatherV2GatherV2Fwhile/decoder_2/bahdanau_attention_3/dense_10/Tensordot/Shape:output:0Ewhile/decoder_2/bahdanau_attention_3/dense_10/Tensordot/free:output:0Nwhile/decoder_2/bahdanau_attention_3/dense_10/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
Gwhile/decoder_2/bahdanau_attention_3/dense_10/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ÷
Bwhile/decoder_2/bahdanau_attention_3/dense_10/Tensordot/GatherV2_1GatherV2Fwhile/decoder_2/bahdanau_attention_3/dense_10/Tensordot/Shape:output:0Ewhile/decoder_2/bahdanau_attention_3/dense_10/Tensordot/axes:output:0Pwhile/decoder_2/bahdanau_attention_3/dense_10/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
=while/decoder_2/bahdanau_attention_3/dense_10/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ř
<while/decoder_2/bahdanau_attention_3/dense_10/Tensordot/ProdProdIwhile/decoder_2/bahdanau_attention_3/dense_10/Tensordot/GatherV2:output:0Fwhile/decoder_2/bahdanau_attention_3/dense_10/Tensordot/Const:output:0*
T0*
_output_shapes
: 
?while/decoder_2/bahdanau_attention_3/dense_10/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ţ
>while/decoder_2/bahdanau_attention_3/dense_10/Tensordot/Prod_1ProdKwhile/decoder_2/bahdanau_attention_3/dense_10/Tensordot/GatherV2_1:output:0Hwhile/decoder_2/bahdanau_attention_3/dense_10/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 
Cwhile/decoder_2/bahdanau_attention_3/dense_10/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ô
>while/decoder_2/bahdanau_attention_3/dense_10/Tensordot/concatConcatV2Ewhile/decoder_2/bahdanau_attention_3/dense_10/Tensordot/free:output:0Ewhile/decoder_2/bahdanau_attention_3/dense_10/Tensordot/axes:output:0Lwhile/decoder_2/bahdanau_attention_3/dense_10/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
=while/decoder_2/bahdanau_attention_3/dense_10/Tensordot/stackPackEwhile/decoder_2/bahdanau_attention_3/dense_10/Tensordot/Prod:output:0Gwhile/decoder_2/bahdanau_attention_3/dense_10/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:ţ
Awhile/decoder_2/bahdanau_attention_3/dense_10/Tensordot/transpose	Transpose.while/decoder_2/gru_5/PartitionedCall:output:1Gwhile/decoder_2/bahdanau_attention_3/dense_10/Tensordot/concat:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
?while/decoder_2/bahdanau_attention_3/dense_10/Tensordot/ReshapeReshapeEwhile/decoder_2/bahdanau_attention_3/dense_10/Tensordot/transpose:y:0Fwhile/decoder_2/bahdanau_attention_3/dense_10/Tensordot/stack:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
>while/decoder_2/bahdanau_attention_3/dense_10/Tensordot/MatMulMatMulHwhile/decoder_2/bahdanau_attention_3/dense_10/Tensordot/Reshape:output:0Nwhile/decoder_2/bahdanau_attention_3/dense_10/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
?while/decoder_2/bahdanau_attention_3/dense_10/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:
Ewhile/decoder_2/bahdanau_attention_3/dense_10/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ß
@while/decoder_2/bahdanau_attention_3/dense_10/Tensordot/concat_1ConcatV2Iwhile/decoder_2/bahdanau_attention_3/dense_10/Tensordot/GatherV2:output:0Hwhile/decoder_2/bahdanau_attention_3/dense_10/Tensordot/Const_2:output:0Nwhile/decoder_2/bahdanau_attention_3/dense_10/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
7while/decoder_2/bahdanau_attention_3/dense_10/TensordotReshapeHwhile/decoder_2/bahdanau_attention_3/dense_10/Tensordot/MatMul:product:0Iwhile/decoder_2/bahdanau_attention_3/dense_10/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙Ú
Fwhile/decoder_2/bahdanau_attention_3/dense_11/Tensordot/ReadVariableOpReadVariableOpQwhile_decoder_2_bahdanau_attention_3_dense_11_tensordot_readvariableop_resource_0* 
_output_shapes
:
*
dtype0
<while/decoder_2/bahdanau_attention_3/dense_11/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
<while/decoder_2/bahdanau_attention_3/dense_11/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       Ú
=while/decoder_2/bahdanau_attention_3/dense_11/Tensordot/ShapeShape_while_decoder_2_bahdanau_attention_3_dense_11_tensordot_shape_encoder_2_gru_4_partitionedcall_0*
T0*
_output_shapes
::íĎ
Ewhile/decoder_2/bahdanau_attention_3/dense_11/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ó
@while/decoder_2/bahdanau_attention_3/dense_11/Tensordot/GatherV2GatherV2Fwhile/decoder_2/bahdanau_attention_3/dense_11/Tensordot/Shape:output:0Ewhile/decoder_2/bahdanau_attention_3/dense_11/Tensordot/free:output:0Nwhile/decoder_2/bahdanau_attention_3/dense_11/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
Gwhile/decoder_2/bahdanau_attention_3/dense_11/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ÷
Bwhile/decoder_2/bahdanau_attention_3/dense_11/Tensordot/GatherV2_1GatherV2Fwhile/decoder_2/bahdanau_attention_3/dense_11/Tensordot/Shape:output:0Ewhile/decoder_2/bahdanau_attention_3/dense_11/Tensordot/axes:output:0Pwhile/decoder_2/bahdanau_attention_3/dense_11/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
=while/decoder_2/bahdanau_attention_3/dense_11/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ř
<while/decoder_2/bahdanau_attention_3/dense_11/Tensordot/ProdProdIwhile/decoder_2/bahdanau_attention_3/dense_11/Tensordot/GatherV2:output:0Fwhile/decoder_2/bahdanau_attention_3/dense_11/Tensordot/Const:output:0*
T0*
_output_shapes
: 
?while/decoder_2/bahdanau_attention_3/dense_11/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ţ
>while/decoder_2/bahdanau_attention_3/dense_11/Tensordot/Prod_1ProdKwhile/decoder_2/bahdanau_attention_3/dense_11/Tensordot/GatherV2_1:output:0Hwhile/decoder_2/bahdanau_attention_3/dense_11/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 
Cwhile/decoder_2/bahdanau_attention_3/dense_11/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ô
>while/decoder_2/bahdanau_attention_3/dense_11/Tensordot/concatConcatV2Ewhile/decoder_2/bahdanau_attention_3/dense_11/Tensordot/free:output:0Ewhile/decoder_2/bahdanau_attention_3/dense_11/Tensordot/axes:output:0Lwhile/decoder_2/bahdanau_attention_3/dense_11/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
=while/decoder_2/bahdanau_attention_3/dense_11/Tensordot/stackPackEwhile/decoder_2/bahdanau_attention_3/dense_11/Tensordot/Prod:output:0Gwhile/decoder_2/bahdanau_attention_3/dense_11/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:¸
Awhile/decoder_2/bahdanau_attention_3/dense_11/Tensordot/transpose	Transpose_while_decoder_2_bahdanau_attention_3_dense_11_tensordot_shape_encoder_2_gru_4_partitionedcall_0Gwhile/decoder_2/bahdanau_attention_3/dense_11/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
?while/decoder_2/bahdanau_attention_3/dense_11/Tensordot/ReshapeReshapeEwhile/decoder_2/bahdanau_attention_3/dense_11/Tensordot/transpose:y:0Fwhile/decoder_2/bahdanau_attention_3/dense_11/Tensordot/stack:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
>while/decoder_2/bahdanau_attention_3/dense_11/Tensordot/MatMulMatMulHwhile/decoder_2/bahdanau_attention_3/dense_11/Tensordot/Reshape:output:0Nwhile/decoder_2/bahdanau_attention_3/dense_11/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
?while/decoder_2/bahdanau_attention_3/dense_11/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:
Ewhile/decoder_2/bahdanau_attention_3/dense_11/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ß
@while/decoder_2/bahdanau_attention_3/dense_11/Tensordot/concat_1ConcatV2Iwhile/decoder_2/bahdanau_attention_3/dense_11/Tensordot/GatherV2:output:0Hwhile/decoder_2/bahdanau_attention_3/dense_11/Tensordot/Const_2:output:0Nwhile/decoder_2/bahdanau_attention_3/dense_11/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
7while/decoder_2/bahdanau_attention_3/dense_11/TensordotReshapeHwhile/decoder_2/bahdanau_attention_3/dense_11/Tensordot/MatMul:product:0Iwhile/decoder_2/bahdanau_attention_3/dense_11/Tensordot/concat_1:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
*while/decoder_2/bahdanau_attention_3/ShapeShape.while/decoder_2/gru_5/PartitionedCall:output:1*
T0*
_output_shapes
::íĎ
8while/decoder_2/bahdanau_attention_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
:while/decoder_2/bahdanau_attention_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙
:while/decoder_2/bahdanau_attention_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
2while/decoder_2/bahdanau_attention_3/strided_sliceStridedSlice3while/decoder_2/bahdanau_attention_3/Shape:output:0Awhile/decoder_2/bahdanau_attention_3/strided_slice/stack:output:0Cwhile/decoder_2/bahdanau_attention_3/strided_slice/stack_1:output:0Cwhile/decoder_2/bahdanau_attention_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskq
/while/decoder_2/bahdanau_attention_3/ones/ConstConst*
_output_shapes
: *
dtype0
*
value	B
 ZÚ
)while/decoder_2/bahdanau_attention_3/onesFill;while/decoder_2/bahdanau_attention_3/strided_slice:output:08while/decoder_2/bahdanau_attention_3/ones/Const:output:0*
T0
*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Hwhile/decoder_2/bahdanau_attention_3/additive_attention_3/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ţ˙˙˙˙˙˙˙˙˘
Dwhile/decoder_2/bahdanau_attention_3/additive_attention_3/ExpandDims
ExpandDims@while/decoder_2/bahdanau_attention_3/dense_10/Tensordot:output:0Qwhile/decoder_2/bahdanau_attention_3/additive_attention_3/ExpandDims/dim:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
Jwhile/decoder_2/bahdanau_attention_3/additive_attention_3/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
valueB :
ý˙˙˙˙˙˙˙˙Ż
Fwhile/decoder_2/bahdanau_attention_3/additive_attention_3/ExpandDims_1
ExpandDims@while/decoder_2/bahdanau_attention_3/dense_11/Tensordot:output:0Swhile/decoder_2/bahdanau_attention_3/additive_attention_3/ExpandDims_1/dim:output:0*
T0*9
_output_shapes'
%:#˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙Ş
=while/decoder_2/bahdanau_attention_3/additive_attention_3/addAddV2Mwhile/decoder_2/bahdanau_attention_3/additive_attention_3/ExpandDims:output:0Owhile/decoder_2/bahdanau_attention_3/additive_attention_3/ExpandDims_1:output:0*
T0*9
_output_shapes'
%:#˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙Í
>while/decoder_2/bahdanau_attention_3/additive_attention_3/TanhTanhAwhile/decoder_2/bahdanau_attention_3/additive_attention_3/add:z:0*
T0*9
_output_shapes'
%:#˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙Ů
Hwhile/decoder_2/bahdanau_attention_3/additive_attention_3/ReadVariableOpReadVariableOpSwhile_decoder_2_bahdanau_attention_3_additive_attention_3_readvariableop_resource_0*
_output_shapes	
:*
dtype0
=while/decoder_2/bahdanau_attention_3/additive_attention_3/mulMulPwhile/decoder_2/bahdanau_attention_3/additive_attention_3/ReadVariableOp:value:0Bwhile/decoder_2/bahdanau_attention_3/additive_attention_3/Tanh:y:0*
T0*9
_output_shapes'
%:#˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Owhile/decoder_2/bahdanau_attention_3/additive_attention_3/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙ 
=while/decoder_2/bahdanau_attention_3/additive_attention_3/SumSumAwhile/decoder_2/bahdanau_attention_3/additive_attention_3/mul:z:0Xwhile/decoder_2/bahdanau_attention_3/additive_attention_3/Sum/reduction_indices:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Jwhile/decoder_2/bahdanau_attention_3/additive_attention_3/ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
valueB :
ţ˙˙˙˙˙˙˙˙ü
Fwhile/decoder_2/bahdanau_attention_3/additive_attention_3/ExpandDims_2
ExpandDimswhile/NotEqual:z:0Swhile/decoder_2/bahdanau_attention_3/additive_attention_3/ExpandDims_2/dim:output:0*
T0
*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙Ů
Dwhile/decoder_2/bahdanau_attention_3/additive_attention_3/LogicalNot
LogicalNotOwhile/decoder_2/bahdanau_attention_3/additive_attention_3/ExpandDims_2:output:0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙Ţ
>while/decoder_2/bahdanau_attention_3/additive_attention_3/CastCastHwhile/decoder_2/bahdanau_attention_3/additive_attention_3/LogicalNot:y:0*

DstT0*

SrcT0
*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Awhile/decoder_2/bahdanau_attention_3/additive_attention_3/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *(knN
?while/decoder_2/bahdanau_attention_3/additive_attention_3/mul_1MulJwhile/decoder_2/bahdanau_attention_3/additive_attention_3/mul_1/x:output:0Bwhile/decoder_2/bahdanau_attention_3/additive_attention_3/Cast:y:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
=while/decoder_2/bahdanau_attention_3/additive_attention_3/subSubFwhile/decoder_2/bahdanau_attention_3/additive_attention_3/Sum:output:0Cwhile/decoder_2/bahdanau_attention_3/additive_attention_3/mul_1:z:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙Î
Awhile/decoder_2/bahdanau_attention_3/additive_attention_3/SoftmaxSoftmaxAwhile/decoder_2/bahdanau_attention_3/additive_attention_3/sub:z:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙ś
@while/decoder_2/bahdanau_attention_3/additive_attention_3/MatMulBatchMatMulV2Kwhile/decoder_2/bahdanau_attention_3/additive_attention_3/Softmax:softmax:0_while_decoder_2_bahdanau_attention_3_dense_11_tensordot_shape_encoder_2_gru_4_partitionedcall_0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
Jwhile/decoder_2/bahdanau_attention_3/additive_attention_3/ExpandDims_3/dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙
Fwhile/decoder_2/bahdanau_attention_3/additive_attention_3/ExpandDims_3
ExpandDims2while/decoder_2/bahdanau_attention_3/ones:output:0Swhile/decoder_2/bahdanau_attention_3/additive_attention_3/ExpandDims_3/dim:output:0*
T0
*+
_output_shapes
:˙˙˙˙˙˙˙˙˙Ţ
@while/decoder_2/bahdanau_attention_3/additive_attention_3/Cast_1CastOwhile/decoder_2/bahdanau_attention_3/additive_attention_3/ExpandDims_3:output:0*

DstT0*

SrcT0
*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
?while/decoder_2/bahdanau_attention_3/additive_attention_3/mul_2MulIwhile/decoder_2/bahdanau_attention_3/additive_attention_3/MatMul:output:0Dwhile/decoder_2/bahdanau_attention_3/additive_attention_3/Cast_1:y:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙f
while/decoder_2/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙ý
while/decoder_2/concatConcatV2Cwhile/decoder_2/bahdanau_attention_3/additive_attention_3/mul_2:z:0.while/decoder_2/gru_5/PartitionedCall:output:1$while/decoder_2/concat/axis:output:0*
N*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙°
1while/decoder_2/dense_12/Tensordot/ReadVariableOpReadVariableOp<while_decoder_2_dense_12_tensordot_readvariableop_resource_0* 
_output_shapes
:
*
dtype0q
'while/decoder_2/dense_12/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:x
'while/decoder_2/dense_12/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       
(while/decoder_2/dense_12/Tensordot/ShapeShapewhile/decoder_2/concat:output:0*
T0*
_output_shapes
::íĎr
0while/decoder_2/dense_12/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
+while/decoder_2/dense_12/Tensordot/GatherV2GatherV21while/decoder_2/dense_12/Tensordot/Shape:output:00while/decoder_2/dense_12/Tensordot/free:output:09while/decoder_2/dense_12/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:t
2while/decoder_2/dense_12/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ł
-while/decoder_2/dense_12/Tensordot/GatherV2_1GatherV21while/decoder_2/dense_12/Tensordot/Shape:output:00while/decoder_2/dense_12/Tensordot/axes:output:0;while/decoder_2/dense_12/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:r
(while/decoder_2/dense_12/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: š
'while/decoder_2/dense_12/Tensordot/ProdProd4while/decoder_2/dense_12/Tensordot/GatherV2:output:01while/decoder_2/dense_12/Tensordot/Const:output:0*
T0*
_output_shapes
: t
*while/decoder_2/dense_12/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ż
)while/decoder_2/dense_12/Tensordot/Prod_1Prod6while/decoder_2/dense_12/Tensordot/GatherV2_1:output:03while/decoder_2/dense_12/Tensordot/Const_1:output:0*
T0*
_output_shapes
: p
.while/decoder_2/dense_12/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
)while/decoder_2/dense_12/Tensordot/concatConcatV20while/decoder_2/dense_12/Tensordot/free:output:00while/decoder_2/dense_12/Tensordot/axes:output:07while/decoder_2/dense_12/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:Ä
(while/decoder_2/dense_12/Tensordot/stackPack0while/decoder_2/dense_12/Tensordot/Prod:output:02while/decoder_2/dense_12/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Ĺ
,while/decoder_2/dense_12/Tensordot/transpose	Transposewhile/decoder_2/concat:output:02while/decoder_2/dense_12/Tensordot/concat:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙Ő
*while/decoder_2/dense_12/Tensordot/ReshapeReshape0while/decoder_2/dense_12/Tensordot/transpose:y:01while/decoder_2/dense_12/Tensordot/stack:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙Ö
)while/decoder_2/dense_12/Tensordot/MatMulMatMul3while/decoder_2/dense_12/Tensordot/Reshape:output:09while/decoder_2/dense_12/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙u
*while/decoder_2/dense_12/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:r
0while/decoder_2/dense_12/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
+while/decoder_2/dense_12/Tensordot/concat_1ConcatV24while/decoder_2/dense_12/Tensordot/GatherV2:output:03while/decoder_2/dense_12/Tensordot/Const_2:output:09while/decoder_2/dense_12/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Ď
"while/decoder_2/dense_12/TensordotReshape3while/decoder_2/dense_12/Tensordot/MatMul:product:04while/decoder_2/dense_12/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/decoder_2/dense_12/TanhTanh+while/decoder_2/dense_12/Tensordot:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙Ż
1while/decoder_2/dense_13/Tensordot/ReadVariableOpReadVariableOp<while_decoder_2_dense_13_tensordot_readvariableop_resource_0*
_output_shapes
:	/*
dtype0q
'while/decoder_2/dense_13/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:x
'while/decoder_2/dense_13/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       
(while/decoder_2/dense_13/Tensordot/ShapeShape!while/decoder_2/dense_12/Tanh:y:0*
T0*
_output_shapes
::íĎr
0while/decoder_2/dense_13/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
+while/decoder_2/dense_13/Tensordot/GatherV2GatherV21while/decoder_2/dense_13/Tensordot/Shape:output:00while/decoder_2/dense_13/Tensordot/free:output:09while/decoder_2/dense_13/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:t
2while/decoder_2/dense_13/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ł
-while/decoder_2/dense_13/Tensordot/GatherV2_1GatherV21while/decoder_2/dense_13/Tensordot/Shape:output:00while/decoder_2/dense_13/Tensordot/axes:output:0;while/decoder_2/dense_13/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:r
(while/decoder_2/dense_13/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: š
'while/decoder_2/dense_13/Tensordot/ProdProd4while/decoder_2/dense_13/Tensordot/GatherV2:output:01while/decoder_2/dense_13/Tensordot/Const:output:0*
T0*
_output_shapes
: t
*while/decoder_2/dense_13/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ż
)while/decoder_2/dense_13/Tensordot/Prod_1Prod6while/decoder_2/dense_13/Tensordot/GatherV2_1:output:03while/decoder_2/dense_13/Tensordot/Const_1:output:0*
T0*
_output_shapes
: p
.while/decoder_2/dense_13/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
)while/decoder_2/dense_13/Tensordot/concatConcatV20while/decoder_2/dense_13/Tensordot/free:output:00while/decoder_2/dense_13/Tensordot/axes:output:07while/decoder_2/dense_13/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:Ä
(while/decoder_2/dense_13/Tensordot/stackPack0while/decoder_2/dense_13/Tensordot/Prod:output:02while/decoder_2/dense_13/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Ç
,while/decoder_2/dense_13/Tensordot/transpose	Transpose!while/decoder_2/dense_12/Tanh:y:02while/decoder_2/dense_13/Tensordot/concat:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙Ő
*while/decoder_2/dense_13/Tensordot/ReshapeReshape0while/decoder_2/dense_13/Tensordot/transpose:y:01while/decoder_2/dense_13/Tensordot/stack:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙Ő
)while/decoder_2/dense_13/Tensordot/MatMulMatMul3while/decoder_2/dense_13/Tensordot/Reshape:output:09while/decoder_2/dense_13/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙/t
*while/decoder_2/dense_13/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:/r
0while/decoder_2/dense_13/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
+while/decoder_2/dense_13/Tensordot/concat_1ConcatV24while/decoder_2/dense_13/Tensordot/GatherV2:output:03while/decoder_2/dense_13/Tensordot/Const_2:output:09while/decoder_2/dense_13/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Î
"while/decoder_2/dense_13/TensordotReshape3while/decoder_2/dense_13/Tensordot/MatMul:product:04while/decoder_2/dense_13/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙/Ś
/while/decoder_2/dense_13/BiasAdd/ReadVariableOpReadVariableOp:while_decoder_2_dense_13_biasadd_readvariableop_resource_0*
_output_shapes
:/*
dtype0Ç
 while/decoder_2/dense_13/BiasAddBiasAdd+while/decoder_2/dense_13/Tensordot:output:07while/decoder_2/dense_13/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙/j
)while/TensorArrayV2Write/TensorListLengthTensorListLengthwhile_placeholder_1*
_output_shapes
: 
%while/TensorArrayV2Write/GreaterEqualGreaterEqualwhile_placeholder2while/TensorArrayV2Write/TensorListLength:length:0*
T0*
_output_shapes
: 
while/TensorArrayV2Write/condStatelessIf)while/TensorArrayV2Write/GreaterEqual:z:0while_placeholderwhile_placeholder_1*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *=
else_branch.R,
*while_TensorArrayV2Write_cond_false_222311*
output_shapes
: *<
then_branch-R+
)while_TensorArrayV2Write_cond_true_222310{
&while/TensorArrayV2Write/cond/IdentityIdentity&while/TensorArrayV2Write/cond:output:0*
T0*
_output_shapes
: 
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItem/while/TensorArrayV2Write/cond/Identity:output:0while_placeholderKwhile/decoder_2/bahdanau_attention_3/additive_attention_3/Softmax:softmax:0*
_output_shapes
: *
element_dtype0:éčŇr
while/ShapeShape)while/decoder_2/dense_13/BiasAdd:output:0*
T0*
_output_shapes
::íĎt
while/Shape_1Shape)while/decoder_2/dense_13/BiasAdd:output:0*
T0*
_output_shapes
::íĎc
while/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: e
while/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
while/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ń
while/strided_sliceStridedSlicewhile/Shape_1:output:0"while/strided_slice/stack:output:0$while/strided_slice/stack_1:output:0$while/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
while/Repeat/dataConst*"
_output_shapes
:/*
dtype0
*L
valueCBA
/Z/                                            g
while/Repeat/CastCastwhile/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: g
while/Repeat/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"      /   ]
while/Repeat/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB _
while/Repeat/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB ~
while/Repeat/ReshapeReshapewhile/Repeat/Cast:y:0%while/Repeat/Reshape/shape_1:output:0*
T0*
_output_shapes
: ]
while/Repeat/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :
while/Repeat/ExpandDims
ExpandDimswhile/Repeat/data:output:0$while/Repeat/ExpandDims/dim:output:0*
T0
*&
_output_shapes
:/_
while/Repeat/Tile/multiples/0Const*
_output_shapes
: *
dtype0*
value	B :_
while/Repeat/Tile/multiples/2Const*
_output_shapes
: *
dtype0*
value	B :_
while/Repeat/Tile/multiples/3Const*
_output_shapes
: *
dtype0*
value	B :č
while/Repeat/Tile/multiplesPack&while/Repeat/Tile/multiples/0:output:0while/Repeat/Reshape:output:0&while/Repeat/Tile/multiples/2:output:0&while/Repeat/Tile/multiples/3:output:0*
N*
T0*
_output_shapes
:
while/Repeat/TileTile while/Repeat/ExpandDims:output:0$while/Repeat/Tile/multiples:output:0*
T0
*/
_output_shapes
:˙˙˙˙˙˙˙˙˙/j
 while/Repeat/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"while/Repeat/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: l
"while/Repeat/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
while/Repeat/strided_sliceStridedSlicewhile/Repeat/Shape:output:0)while/Repeat/strided_slice/stack:output:0+while/Repeat/strided_slice/stack_1:output:0+while/Repeat/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *

begin_maskl
"while/Repeat/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$while/Repeat/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$while/Repeat/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
while/Repeat/strided_slice_1StridedSlicewhile/Repeat/Shape:output:0+while/Repeat/strided_slice_1/stack:output:0-while/Repeat/strided_slice_1/stack_1:output:0-while/Repeat/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
while/Repeat/mulMulwhile/Repeat/Reshape:output:0%while/Repeat/strided_slice_1:output:0*
T0*
_output_shapes
: l
"while/Repeat/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:n
$while/Repeat/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: n
$while/Repeat/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
while/Repeat/strided_slice_2StridedSlicewhile/Repeat/Shape:output:0+while/Repeat/strided_slice_2/stack:output:0-while/Repeat/strided_slice_2/stack_1:output:0-while/Repeat/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskh
while/Repeat/concat/values_1Packwhile/Repeat/mul:z:0*
N*
T0*
_output_shapes
:Z
while/Repeat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ă
while/Repeat/concatConcatV2#while/Repeat/strided_slice:output:0%while/Repeat/concat/values_1:output:0%while/Repeat/strided_slice_2:output:0!while/Repeat/concat/axis:output:0*
N*
T0*
_output_shapes
:
while/Repeat/Reshape_1Reshapewhile/Repeat/Tile:output:0while/Repeat/concat:output:0*
T0
*+
_output_shapes
:˙˙˙˙˙˙˙˙˙/t
while/Shape_2Shape)while/decoder_2/dense_13/BiasAdd:output:0*
T0*
_output_shapes
::íĎt
while/Shape_3Shape)while/decoder_2/dense_13/BiasAdd:output:0*
T0*
_output_shapes
::íĎe
while/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: g
while/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
while/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ů
while/strided_slice_1StridedSlicewhile/Shape_3:output:0$while/strided_slice_1/stack:output:0&while/strided_slice_1/stack_1:output:0&while/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskS
while/Fill/dims/1Const*
_output_shapes
: *
dtype0*
value	B :S
while/Fill/dims/2Const*
_output_shapes
: *
dtype0*
value	B :/
while/Fill/dimsPackwhile/strided_slice_1:output:0while/Fill/dims/1:output:0while/Fill/dims/2:output:0*
N*
T0*
_output_shapes
:U
while/Fill/valueConst*
_output_shapes
: *
dtype0*
valueB
 *  ˙}

while/FillFillwhile/Fill/dims:output:0while/Fill/value:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙/ą
while/SelectV2SelectV2while/Repeat/Reshape_1:output:0while/Fill:output:0)while/decoder_2/dense_13/BiasAdd:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙/z
while/SqueezeSqueezewhile/SelectV2:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙/*
squeeze_dims
T
while/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?|
while/truedivRealDivwhile/Squeeze:output:0while/truediv/y:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙/k
)while/categorical/Multinomial/num_samplesConst*
_output_shapes
: *
dtype0*
value	B :Ľ
while/categorical/MultinomialMultinomialwhile/truediv:z:02while/categorical/Multinomial/num_samples:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/EqualEqualwhile_equal_x_0&while/categorical/Multinomial:output:0*
T0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
incompatible_shape_error( d
while/or	LogicalOrwhile_placeholder_5while/Equal:z:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙q
while/Shape_4Shape&while/categorical/Multinomial:output:0*
T0	*
_output_shapes
::íĎq
while/Shape_5Shape&while/categorical/Multinomial:output:0*
T0	*
_output_shapes
::íĎe
while/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: g
while/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
while/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ů
while/strided_slice_2StridedSlicewhile/Shape_5:output:0$while/strided_slice_2/stack:output:0&while/strided_slice_2/stack_1:output:0&while/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
while/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R U
while/Fill_1/dims/1Const*
_output_shapes
: *
dtype0*
value	B :
while/Fill_1/dimsPackwhile/strided_slice_2:output:0while/Fill_1/dims/1:output:0*
N*
T0*
_output_shapes
:x
while/Fill_1Fillwhile/Fill_1/dims:output:0while/Const:output:0*
T0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/SelectV2_1SelectV2while/or:z:0while/Fill_1:output:0&while/categorical/Multinomial:output:0*
T0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙l
+while/TensorArrayV2Write_1/TensorListLengthTensorListLengthwhile_placeholder_2*
_output_shapes
: Ą
'while/TensorArrayV2Write_1/GreaterEqualGreaterEqualwhile_placeholder4while/TensorArrayV2Write_1/TensorListLength:length:0*
T0*
_output_shapes
: Ą
while/TensorArrayV2Write_1/condStatelessIf+while/TensorArrayV2Write_1/GreaterEqual:z:0while_placeholderwhile_placeholder_2*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *?
else_branch0R.
,while_TensorArrayV2Write_1_cond_false_222396*
output_shapes
: *>
then_branch/R-
+while_TensorArrayV2Write_1_cond_true_222395
(while/TensorArrayV2Write_1/cond/IdentityIdentity(while/TensorArrayV2Write_1/cond:output:0*
T0*
_output_shapes
: â
,while/TensorArrayV2Write_1/TensorListSetItemTensorListSetItem1while/TensorArrayV2Write_1/cond/Identity:output:0while_placeholderwhile/SelectV2_1:output:0*
_output_shapes
: *
element_dtype0	:éčĐ^
while/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       N
	while/AllAllwhile/or:z:0while/Const_1:output:0*
_output_shapes
: ľ

while/condStatelessIfwhile/All:output:0while_placeholder_3*
Tcond0
*
Tin
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 **
else_branchR
while_cond_false_222414*
output_shapes
: *)
then_branchR
while_cond_true_222413U
while/cond/IdentityIdentitywhile/cond:output:0*
T0
*
_output_shapes
: _
	while/addAddV2while_placeholderwhile_add_range_delta_0*
T0*
_output_shapes
: O
while/Const_2Const*
_output_shapes
: *
dtype0
*
value	B
 Z O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity<while/TensorArrayV2Write_1/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: h
while/Identity_5Identitywhile/cond/Identity:output:0^while/NoOp*
T0
*
_output_shapes
: 
while/Identity_6Identity.while/decoder_2/gru_5/PartitionedCall:output:2^while/NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙i
while/Identity_7Identitywhile/or:z:0^while/NoOp*
T0
*'
_output_shapes
:˙˙˙˙˙˙˙˙˙v
while/Identity_8Identitywhile/SelectV2_1:output:0^while/NoOp*
T0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ú

while/NoOpNoOpI^while/decoder_2/bahdanau_attention_3/additive_attention_3/ReadVariableOpG^while/decoder_2/bahdanau_attention_3/dense_10/Tensordot/ReadVariableOpG^while/decoder_2/bahdanau_attention_3/dense_11/Tensordot/ReadVariableOp2^while/decoder_2/dense_12/Tensordot/ReadVariableOp0^while/decoder_2/dense_13/BiasAdd/ReadVariableOp2^while/decoder_2/dense_13/Tensordot/ReadVariableOp-^while/decoder_2/embedding_5/embedding_lookup*^while/decoder_2/gru_5/Read/ReadVariableOp,^while/decoder_2/gru_5/Read_1/ReadVariableOp,^while/decoder_2/gru_5/Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "0
while_add_range_deltawhile_add_range_delta_0"¨
Qwhile_decoder_2_bahdanau_attention_3_additive_attention_3_readvariableop_resourceSwhile_decoder_2_bahdanau_attention_3_additive_attention_3_readvariableop_resource_0"¤
Owhile_decoder_2_bahdanau_attention_3_dense_10_tensordot_readvariableop_resourceQwhile_decoder_2_bahdanau_attention_3_dense_10_tensordot_readvariableop_resource_0"¤
Owhile_decoder_2_bahdanau_attention_3_dense_11_tensordot_readvariableop_resourceQwhile_decoder_2_bahdanau_attention_3_dense_11_tensordot_readvariableop_resource_0"Ŕ
]while_decoder_2_bahdanau_attention_3_dense_11_tensordot_shape_encoder_2_gru_4_partitionedcall_while_decoder_2_bahdanau_attention_3_dense_11_tensordot_shape_encoder_2_gru_4_partitionedcall_0"z
:while_decoder_2_dense_12_tensordot_readvariableop_resource<while_decoder_2_dense_12_tensordot_readvariableop_resource_0"v
8while_decoder_2_dense_13_biasadd_readvariableop_resource:while_decoder_2_dense_13_biasadd_readvariableop_resource_0"z
:while_decoder_2_dense_13_tensordot_readvariableop_resource<while_decoder_2_dense_13_tensordot_readvariableop_resource_0"l
3while_decoder_2_embedding_5_embedding_lookup_2218105while_decoder_2_embedding_5_embedding_lookup_221810_0"n
4while_decoder_2_gru_5_read_1_readvariableop_resource6while_decoder_2_gru_5_read_1_readvariableop_resource_0"n
4while_decoder_2_gru_5_read_2_readvariableop_resource6while_decoder_2_gru_5_read_2_readvariableop_resource_0"j
2while_decoder_2_gru_5_read_readvariableop_resource4while_decoder_2_gru_5_read_readvariableop_resource_0" 
while_equal_xwhile_equal_x_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"-
while_identity_6while/Identity_6:output:0"-
while_identity_7while/Identity_7:output:0"-
while_identity_8while/Identity_8:output:0"
Ewhile_notequal_text_vectorization_raggedtotensor_raggedtensortotensorGwhile_notequal_text_vectorization_raggedtotensor_raggedtensortotensor_0"(
while_range_limitwhile_range_limit_0*(
_construction_contextkEagerRuntime*˛
_input_shapes 
: : : : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : : : : :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : : : : 2
Hwhile/decoder_2/bahdanau_attention_3/additive_attention_3/ReadVariableOpHwhile/decoder_2/bahdanau_attention_3/additive_attention_3/ReadVariableOp2
Fwhile/decoder_2/bahdanau_attention_3/dense_10/Tensordot/ReadVariableOpFwhile/decoder_2/bahdanau_attention_3/dense_10/Tensordot/ReadVariableOp2
Fwhile/decoder_2/bahdanau_attention_3/dense_11/Tensordot/ReadVariableOpFwhile/decoder_2/bahdanau_attention_3/dense_11/Tensordot/ReadVariableOp2f
1while/decoder_2/dense_12/Tensordot/ReadVariableOp1while/decoder_2/dense_12/Tensordot/ReadVariableOp2b
/while/decoder_2/dense_13/BiasAdd/ReadVariableOp/while/decoder_2/dense_13/BiasAdd/ReadVariableOp2f
1while/decoder_2/dense_13/Tensordot/ReadVariableOp1while/decoder_2/dense_13/Tensordot/ReadVariableOp2\
,while/decoder_2/embedding_5/embedding_lookup,while/decoder_2/embedding_5/embedding_lookup2V
)while/decoder_2/gru_5/Read/ReadVariableOp)while/decoder_2/gru_5/Read/ReadVariableOp2Z
+while/decoder_2/gru_5/Read_1/ReadVariableOp+while/decoder_2/gru_5/Read_1/ReadVariableOp2Z
+while/decoder_2/gru_5/Read_2/ReadVariableOp+while/decoder_2/gru_5/Read_2/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙:	

_output_shapes
: :6
2
0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:;7
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:

_output_shapes
: :

_output_shapes
: 
Ď
;
__inference__creator_225819
identity˘
hash_tablel

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name1848*
value_dtype0	W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: S
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
É5
Ż
(__inference_gpu_gru_with_fallback_223183

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : p

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*8
_output_shapes&
$:
:
:
*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*8
_output_shapes&
$:
:
:
*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:0S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*>
_output_shapes,
*::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:@a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:@a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:@\
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:\
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:]

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:]

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ě
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes
	:°đU
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Ő
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*S
_output_shapesA
?:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ć
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙q
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g

Identity_1Identitytranspose_7:y:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:
:
:	*<
api_implements*(gru_5976a3ee-e574-4dbf-b0cb-b865ba03a7ab*
api_preferred_deviceGPU*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_h:HD
 
_output_shapes
:

 
_user_specified_namekernel:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	

_user_specified_namebias
¸?
ź
&__forward_gpu_gru_with_fallback_225792

inputs
init_h_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
cudnnrnn
transpose_7_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
cudnnrnn_input_c

concat
transpose_perm

init_h
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dimc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : r

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*8
_output_shapes&
$:
:
:
*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*8
_output_shapes&
$:
:
:
*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:0S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*>
_output_shapes,
*::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:@a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:@a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:@\
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:\
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:]

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:]

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ż
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Ů
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*S
_output_shapesA
?:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ć
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙q
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g

Identity_1Identitytranspose_7:y:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:
:
:	*<
api_implements*(gru_07955a2a-cea5-4ff8-b194-1e634df5f32e*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_225657_225793*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_h:HD
 
_output_shapes
:

 
_user_specified_namekernel:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	

_user_specified_namebias
ô	
Ţ
while_cond_224333
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_224333___redundant_placeholder04
0while_while_cond_224333___redundant_placeholder14
0while_while_cond_224333___redundant_placeholder24
0while_while_cond_224333___redundant_placeholder34
0while_while_cond_224333___redundant_placeholder4
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2: : : : :˙˙˙˙˙˙˙˙˙: ::::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
>
Ł
__inference_standard_gru_223512

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3O
unstackUnpackbias*
T0*"
_output_shapes
::*	
numc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙P
ShapeShapetranspose:y:0*
T0*
_output_shapes
::íĎ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙˛
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ŕ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ę
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙i
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ś
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ź
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_splita
addAddV2split:output:0split_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙N
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
add_1AddV2split:output:1split_1:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙R
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
mulMulSigmoid_1:y:0split_1:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
add_2AddV2split:output:2mul:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙J
TanhTanh	add_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙T
mul_1MulSigmoid:y:0init_h*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Z
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙R
mul_2Mulsub:z:0Tanh:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙W
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ś
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ş
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*Z
_output_shapesH
F: : : : :˙˙˙˙˙˙˙˙˙: : :
::
:* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_223423*
condR
while_cond_223422*Y
output_shapesH
F: : : : :˙˙˙˙˙˙˙˙˙: : :
::
:*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ě
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?a
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g

Identity_1Identitytranspose_1:y:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙Y

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:
:
:	*<
api_implements*(gru_4bea4fd2-303a-4944-b50d-a22864d0be38*
api_preferred_deviceCPU*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_h:HD
 
_output_shapes
:

 
_user_specified_namekernel:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	

_user_specified_namebias
?
ź
&__forward_gpu_gru_with_fallback_222176

inputs
init_h_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
cudnnrnn
transpose_7_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
cudnnrnn_input_c

concat
transpose_perm

init_h
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dimc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : r

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*8
_output_shapes&
$:
:
:
*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*8
_output_shapes&
$:
:
:
*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:0S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*>
_output_shapes,
*::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:@a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:@a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:@\
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:\
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:]

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:]

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ż
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Đ
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*J
_output_shapes8
6:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ć
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙q
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^

Identity_1Identitytranspose_7:y:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:
:
:	*<
api_implements*(gru_419b21df-e3dd-4c73-9336-81a862f3d97b*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_222041_222177*
go_backwards( *

time_major( :T P
,
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_h:HD
 
_output_shapes
:

 
_user_specified_namekernel:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	

_user_specified_namebias
Č
Ń
A__inference_gru_4_layer_call_and_return_conditional_losses_223323

inputs0
read_readvariableop_resource:
2
read_1_readvariableop_resource:
1
read_2_readvariableop_resource:	

identity_3

identity_4˘Read/ReadVariableOp˘Read_1/ReadVariableOp˘Read_2/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::íĎ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙r
Read/ReadVariableOpReadVariableOpread_readvariableop_resource* 
_output_shapes
:
*
dtype0\
IdentityIdentityRead/ReadVariableOp:value:0*
T0* 
_output_shapes
:
v
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource* 
_output_shapes
:
*
dtype0`

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
u
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes
:	*
dtype0_

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	
PartitionedCallPartitionedCallinputszeros:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *_
_output_shapesM
K:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *(
f#R!
__inference_standard_gru_223107w

Identity_3IdentityPartitionedCall:output:1^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙j

Identity_4IdentityPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ţ
Ş
__inference__traced_save_226076
file_prefixJ
7read_disablecopyonread_encoder_2_embedding_4_embeddings:	-N
:read_1_disablecopyonread_encoder_2_gru_4_gru_cell_4_kernel:
X
Dread_2_disablecopyonread_encoder_2_gru_4_gru_cell_4_recurrent_kernel:
K
8read_3_disablecopyonread_encoder_2_gru_4_gru_cell_4_bias:	R
?read_4_disablecopyonread_while_decoder_2_embedding_5_embeddings:	/T
@read_5_disablecopyonread_while_decoder_2_gru_5_gru_cell_5_kernel:
^
Jread_6_disablecopyonread_while_decoder_2_gru_5_gru_cell_5_recurrent_kernel:
Q
>read_7_disablecopyonread_while_decoder_2_gru_5_gru_cell_5_bias:	a
Mread_8_disablecopyonread_while_decoder_2_bahdanau_attention_3_dense_10_kernel:
a
Mread_9_disablecopyonread_while_decoder_2_bahdanau_attention_3_dense_11_kernel:
h
Yread_10_disablecopyonread_while_decoder_2_bahdanau_attention_3_additive_attention_3_scale:	M
9read_11_disablecopyonread_while_decoder_2_dense_12_kernel:
L
9read_12_disablecopyonread_while_decoder_2_dense_13_kernel:	/E
7read_13_disablecopyonread_while_decoder_2_dense_13_bias:/L
Hsavev2_mutablehashtable_1_lookup_table_export_values_lookuptableexportv2N
Jsavev2_mutablehashtable_1_lookup_table_export_values_lookuptableexportv2_1	J
Fsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2L
Hsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2_1	
savev2_const_16
identity_29˘MergeV2Checkpoints˘Read/DisableCopyOnRead˘Read/ReadVariableOp˘Read_1/DisableCopyOnRead˘Read_1/ReadVariableOp˘Read_10/DisableCopyOnRead˘Read_10/ReadVariableOp˘Read_11/DisableCopyOnRead˘Read_11/ReadVariableOp˘Read_12/DisableCopyOnRead˘Read_12/ReadVariableOp˘Read_13/DisableCopyOnRead˘Read_13/ReadVariableOp˘Read_2/DisableCopyOnRead˘Read_2/ReadVariableOp˘Read_3/DisableCopyOnRead˘Read_3/ReadVariableOp˘Read_4/DisableCopyOnRead˘Read_4/ReadVariableOp˘Read_5/DisableCopyOnRead˘Read_5/ReadVariableOp˘Read_6/DisableCopyOnRead˘Read_6/ReadVariableOp˘Read_7/DisableCopyOnRead˘Read_7/ReadVariableOp˘Read_8/DisableCopyOnRead˘Read_8/ReadVariableOp˘Read_9/DisableCopyOnRead˘Read_9/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 
Read/DisableCopyOnReadDisableCopyOnRead7read_disablecopyonread_encoder_2_embedding_4_embeddings"/device:CPU:0*
_output_shapes
 ´
Read/ReadVariableOpReadVariableOp7read_disablecopyonread_encoder_2_embedding_4_embeddings^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	-*
dtype0j
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	-b

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes
:	-
Read_1/DisableCopyOnReadDisableCopyOnRead:read_1_disablecopyonread_encoder_2_gru_4_gru_cell_4_kernel"/device:CPU:0*
_output_shapes
 ź
Read_1/ReadVariableOpReadVariableOp:read_1_disablecopyonread_encoder_2_gru_4_gru_cell_4_kernel^Read_1/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
*
dtype0o

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
e

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0* 
_output_shapes
:

Read_2/DisableCopyOnReadDisableCopyOnReadDread_2_disablecopyonread_encoder_2_gru_4_gru_cell_4_recurrent_kernel"/device:CPU:0*
_output_shapes
 Ć
Read_2/ReadVariableOpReadVariableOpDread_2_disablecopyonread_encoder_2_gru_4_gru_cell_4_recurrent_kernel^Read_2/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
*
dtype0o

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
e

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0* 
_output_shapes
:

Read_3/DisableCopyOnReadDisableCopyOnRead8read_3_disablecopyonread_encoder_2_gru_4_gru_cell_4_bias"/device:CPU:0*
_output_shapes
 š
Read_3/ReadVariableOpReadVariableOp8read_3_disablecopyonread_encoder_2_gru_4_gru_cell_4_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	*
dtype0n

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	d

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:	
Read_4/DisableCopyOnReadDisableCopyOnRead?read_4_disablecopyonread_while_decoder_2_embedding_5_embeddings"/device:CPU:0*
_output_shapes
 Ŕ
Read_4/ReadVariableOpReadVariableOp?read_4_disablecopyonread_while_decoder_2_embedding_5_embeddings^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	/*
dtype0n

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	/d

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes
:	/
Read_5/DisableCopyOnReadDisableCopyOnRead@read_5_disablecopyonread_while_decoder_2_gru_5_gru_cell_5_kernel"/device:CPU:0*
_output_shapes
 Â
Read_5/ReadVariableOpReadVariableOp@read_5_disablecopyonread_while_decoder_2_gru_5_gru_cell_5_kernel^Read_5/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
*
dtype0p
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
g
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0* 
_output_shapes
:

Read_6/DisableCopyOnReadDisableCopyOnReadJread_6_disablecopyonread_while_decoder_2_gru_5_gru_cell_5_recurrent_kernel"/device:CPU:0*
_output_shapes
 Ě
Read_6/ReadVariableOpReadVariableOpJread_6_disablecopyonread_while_decoder_2_gru_5_gru_cell_5_recurrent_kernel^Read_6/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
*
dtype0p
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
g
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0* 
_output_shapes
:

Read_7/DisableCopyOnReadDisableCopyOnRead>read_7_disablecopyonread_while_decoder_2_gru_5_gru_cell_5_bias"/device:CPU:0*
_output_shapes
 ż
Read_7/ReadVariableOpReadVariableOp>read_7_disablecopyonread_while_decoder_2_gru_5_gru_cell_5_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	*
dtype0o
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	f
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:	Ą
Read_8/DisableCopyOnReadDisableCopyOnReadMread_8_disablecopyonread_while_decoder_2_bahdanau_attention_3_dense_10_kernel"/device:CPU:0*
_output_shapes
 Ď
Read_8/ReadVariableOpReadVariableOpMread_8_disablecopyonread_while_decoder_2_bahdanau_attention_3_dense_10_kernel^Read_8/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
*
dtype0p
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
g
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0* 
_output_shapes
:
Ą
Read_9/DisableCopyOnReadDisableCopyOnReadMread_9_disablecopyonread_while_decoder_2_bahdanau_attention_3_dense_11_kernel"/device:CPU:0*
_output_shapes
 Ď
Read_9/ReadVariableOpReadVariableOpMread_9_disablecopyonread_while_decoder_2_bahdanau_attention_3_dense_11_kernel^Read_9/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
*
dtype0p
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
g
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0* 
_output_shapes
:
Ž
Read_10/DisableCopyOnReadDisableCopyOnReadYread_10_disablecopyonread_while_decoder_2_bahdanau_attention_3_additive_attention_3_scale"/device:CPU:0*
_output_shapes
 Ř
Read_10/ReadVariableOpReadVariableOpYread_10_disablecopyonread_while_decoder_2_bahdanau_attention_3_additive_attention_3_scale^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:*
dtype0l
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:b
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes	
:
Read_11/DisableCopyOnReadDisableCopyOnRead9read_11_disablecopyonread_while_decoder_2_dense_12_kernel"/device:CPU:0*
_output_shapes
 ˝
Read_11/ReadVariableOpReadVariableOp9read_11_disablecopyonread_while_decoder_2_dense_12_kernel^Read_11/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
*
dtype0q
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
g
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0* 
_output_shapes
:

Read_12/DisableCopyOnReadDisableCopyOnRead9read_12_disablecopyonread_while_decoder_2_dense_13_kernel"/device:CPU:0*
_output_shapes
 ź
Read_12/ReadVariableOpReadVariableOp9read_12_disablecopyonread_while_decoder_2_dense_13_kernel^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	/*
dtype0p
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	/f
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes
:	/
Read_13/DisableCopyOnReadDisableCopyOnRead7read_13_disablecopyonread_while_decoder_2_dense_13_bias"/device:CPU:0*
_output_shapes
 ľ
Read_13/ReadVariableOpReadVariableOp7read_13_disablecopyonread_while_decoder_2_dense_13_bias^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:/*
dtype0k
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:/a
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
:/Đ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*ů
valueďBěB.encoder/variables/0/.ATTRIBUTES/VARIABLE_VALUEB.encoder/variables/1/.ATTRIBUTES/VARIABLE_VALUEB.encoder/variables/2/.ATTRIBUTES/VARIABLE_VALUEB.encoder/variables/3/.ATTRIBUTES/VARIABLE_VALUEB.decoder/variables/0/.ATTRIBUTES/VARIABLE_VALUEB.decoder/variables/1/.ATTRIBUTES/VARIABLE_VALUEB.decoder/variables/2/.ATTRIBUTES/VARIABLE_VALUEB.decoder/variables/3/.ATTRIBUTES/VARIABLE_VALUEB.decoder/variables/4/.ATTRIBUTES/VARIABLE_VALUEB.decoder/variables/5/.ATTRIBUTES/VARIABLE_VALUEB.decoder/variables/6/.ATTRIBUTES/VARIABLE_VALUEB.decoder/variables/7/.ATTRIBUTES/VARIABLE_VALUEB.decoder/variables/8/.ATTRIBUTES/VARIABLE_VALUEB.decoder/variables/9/.ATTRIBUTES/VARIABLE_VALUEBFinput_text_processor/_lookup_layer/token_counts/.ATTRIBUTES/table-keysBHinput_text_processor/_lookup_layer/token_counts/.ATTRIBUTES/table-valuesBGoutput_text_processor/_lookup_layer/token_counts/.ATTRIBUTES/table-keysBIoutput_text_processor/_lookup_layer/token_counts/.ATTRIBUTES/table-valuesB_CHECKPOINTABLE_OBJECT_GRAPH
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*9
value0B.B B B B B B B B B B B B B B B B B B B Ä
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Hsavev2_mutablehashtable_1_lookup_table_export_values_lookuptableexportv2Jsavev2_mutablehashtable_1_lookup_table_export_values_lookuptableexportv2_1Fsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2Hsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2_1savev2_const_16"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *!
dtypes
2		
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:ł
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_28Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_29IdentityIdentity_28:output:0^NoOp*
T0*
_output_shapes
: Š
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "#
identity_29Identity_29:output:0*C
_input_shapes2
0: : : : : : : : : : : : : : : ::::: 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
::

_output_shapes
::

_output_shapes
::

_output_shapes
::

_output_shapes
: 
>
Ł
__inference_standard_gru_225203

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3O
unstackUnpackbias*
T0*"
_output_shapes
::*	
numc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙P
ShapeShapetranspose:y:0*
T0*
_output_shapes
::íĎ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙˛
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ŕ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ę
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙i
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ś
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ź
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_splita
addAddV2split:output:0split_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙N
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
add_1AddV2split:output:1split_1:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙R
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
mulMulSigmoid_1:y:0split_1:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
add_2AddV2split:output:2mul:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙J
TanhTanh	add_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙T
mul_1MulSigmoid:y:0init_h*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Z
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙R
mul_2Mulsub:z:0Tanh:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙W
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ś
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ş
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*Z
_output_shapesH
F: : : : :˙˙˙˙˙˙˙˙˙: : :
::
:* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_225114*
condR
while_cond_225113*Y
output_shapesH
F: : : : :˙˙˙˙˙˙˙˙˙: : :
::
:*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ě
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?a
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g

Identity_1Identitytranspose_1:y:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙Y

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:
:
:	*<
api_implements*(gru_763ea995-9cec-46e8-a459-24ea90b94caa*
api_preferred_deviceCPU*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_h:HD
 
_output_shapes
:

 
_user_specified_namekernel:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	

_user_specified_namebias

N
while_cond_false_221784
while_cond_placeholder

while_cond_identity
R
while/cond/ConstConst*
_output_shapes
: *
dtype0
*
value	B
 Z [
while/cond/IdentityIdentitywhile/cond/Const:output:0*
T0
*
_output_shapes
: "3
while_cond_identitywhile/cond/Identity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 

_output_shapes
: 


__inference__initializer_2258099
5key_value_init172200_lookuptableimportv2_table_handle1
-key_value_init172200_lookuptableimportv2_keys	3
/key_value_init172200_lookuptableimportv2_values
identity˘(key_value_init172200/LookupTableImportV2
(key_value_init172200/LookupTableImportV2LookupTableImportV25key_value_init172200_lookuptableimportv2_table_handle-key_value_init172200_lookuptableimportv2_keys/key_value_init172200_lookuptableimportv2_values*	
Tin0	*

Tout0*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: q
NoOpNoOp)^key_value_init172200/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: :-:-2T
(key_value_init172200/LookupTableImportV2(key_value_init172200/LookupTableImportV2: 

_output_shapes
:-: 

_output_shapes
:-
¸?
ź
&__forward_gpu_gru_with_fallback_223319

inputs
init_h_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
cudnnrnn
transpose_7_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
cudnnrnn_input_c

concat
transpose_perm

init_h
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dimc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : r

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*8
_output_shapes&
$:
:
:
*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*8
_output_shapes&
$:
:
:
*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:0S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*>
_output_shapes,
*::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:@a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:@a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:@\
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:\
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:]

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:]

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ż
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Ů
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*S
_output_shapesA
?:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ć
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙q
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g

Identity_1Identitytranspose_7:y:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:
:
:	*<
api_implements*(gru_5976a3ee-e574-4dbf-b0cb-b865ba03a7ab*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_223184_223320*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_h:HD
 
_output_shapes
:

 
_user_specified_namekernel:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	

_user_specified_namebias
Đ
Ó
A__inference_gru_4_layer_call_and_return_conditional_losses_224639
inputs_00
read_readvariableop_resource:
2
read_1_readvariableop_resource:
1
read_2_readvariableop_resource:	

identity_3

identity_4˘Read/ReadVariableOp˘Read_1/ReadVariableOp˘Read_2/ReadVariableOpK
ShapeShapeinputs_0*
T0*
_output_shapes
::íĎ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙r
Read/ReadVariableOpReadVariableOpread_readvariableop_resource* 
_output_shapes
:
*
dtype0\
IdentityIdentityRead/ReadVariableOp:value:0*
T0* 
_output_shapes
:
v
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource* 
_output_shapes
:
*
dtype0`

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
u
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes
:	*
dtype0_

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	
PartitionedCallPartitionedCallinputs_0zeros:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *_
_output_shapesM
K:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *(
f#R!
__inference_standard_gru_224423w

Identity_3IdentityPartitionedCall:output:1^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙j

Identity_4IdentityPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:_ [
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs_0
ô	
Ţ
while_cond_221435
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_221435___redundant_placeholder04
0while_while_cond_221435___redundant_placeholder14
0while_while_cond_221435___redundant_placeholder24
0while_while_cond_221435___redundant_placeholder34
0while_while_cond_221435___redundant_placeholder4
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2: : : : :˙˙˙˙˙˙˙˙˙: ::::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:

ř
__inference__initializer_2258607
3key_value_init3677_lookuptableimportv2_table_handle/
+key_value_init3677_lookuptableimportv2_keys1
-key_value_init3677_lookuptableimportv2_values	
identity˘&key_value_init3677/LookupTableImportV2ű
&key_value_init3677/LookupTableImportV2LookupTableImportV23key_value_init3677_lookuptableimportv2_table_handle+key_value_init3677_lookuptableimportv2_keys-key_value_init3677_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: o
NoOpNoOp'^key_value_init3677/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: :-:-2P
&key_value_init3677/LookupTableImportV2&key_value_init3677/LookupTableImportV2: 

_output_shapes
:-: 

_output_shapes
:-
ŃQ
ß
"__inference__traced_restore_226134
file_prefixD
1assignvariableop_encoder_2_embedding_4_embeddings:	-H
4assignvariableop_1_encoder_2_gru_4_gru_cell_4_kernel:
R
>assignvariableop_2_encoder_2_gru_4_gru_cell_4_recurrent_kernel:
E
2assignvariableop_3_encoder_2_gru_4_gru_cell_4_bias:	L
9assignvariableop_4_while_decoder_2_embedding_5_embeddings:	/N
:assignvariableop_5_while_decoder_2_gru_5_gru_cell_5_kernel:
X
Dassignvariableop_6_while_decoder_2_gru_5_gru_cell_5_recurrent_kernel:
K
8assignvariableop_7_while_decoder_2_gru_5_gru_cell_5_bias:	[
Gassignvariableop_8_while_decoder_2_bahdanau_attention_3_dense_10_kernel:
[
Gassignvariableop_9_while_decoder_2_bahdanau_attention_3_dense_11_kernel:
b
Sassignvariableop_10_while_decoder_2_bahdanau_attention_3_additive_attention_3_scale:	G
3assignvariableop_11_while_decoder_2_dense_12_kernel:
F
3assignvariableop_12_while_decoder_2_dense_13_kernel:	/?
1assignvariableop_13_while_decoder_2_dense_13_bias:/O
Emutablehashtable_table_restore_lookuptableimportv2_mutablehashtable_1: O
Emutablehashtable_table_restore_1_lookuptableimportv2_mutablehashtable: 
identity_15˘AssignVariableOp˘AssignVariableOp_1˘AssignVariableOp_10˘AssignVariableOp_11˘AssignVariableOp_12˘AssignVariableOp_13˘AssignVariableOp_2˘AssignVariableOp_3˘AssignVariableOp_4˘AssignVariableOp_5˘AssignVariableOp_6˘AssignVariableOp_7˘AssignVariableOp_8˘AssignVariableOp_9˘2MutableHashTable_table_restore/LookupTableImportV2˘4MutableHashTable_table_restore_1/LookupTableImportV2Ó
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*ů
valueďBěB.encoder/variables/0/.ATTRIBUTES/VARIABLE_VALUEB.encoder/variables/1/.ATTRIBUTES/VARIABLE_VALUEB.encoder/variables/2/.ATTRIBUTES/VARIABLE_VALUEB.encoder/variables/3/.ATTRIBUTES/VARIABLE_VALUEB.decoder/variables/0/.ATTRIBUTES/VARIABLE_VALUEB.decoder/variables/1/.ATTRIBUTES/VARIABLE_VALUEB.decoder/variables/2/.ATTRIBUTES/VARIABLE_VALUEB.decoder/variables/3/.ATTRIBUTES/VARIABLE_VALUEB.decoder/variables/4/.ATTRIBUTES/VARIABLE_VALUEB.decoder/variables/5/.ATTRIBUTES/VARIABLE_VALUEB.decoder/variables/6/.ATTRIBUTES/VARIABLE_VALUEB.decoder/variables/7/.ATTRIBUTES/VARIABLE_VALUEB.decoder/variables/8/.ATTRIBUTES/VARIABLE_VALUEB.decoder/variables/9/.ATTRIBUTES/VARIABLE_VALUEBFinput_text_processor/_lookup_layer/token_counts/.ATTRIBUTES/table-keysBHinput_text_processor/_lookup_layer/token_counts/.ATTRIBUTES/table-valuesBGoutput_text_processor/_lookup_layer/token_counts/.ATTRIBUTES/table-keysBIoutput_text_processor/_lookup_layer/token_counts/.ATTRIBUTES/table-valuesB_CHECKPOINTABLE_OBJECT_GRAPH
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*9
value0B.B B B B B B B B B B B B B B B B B B B ý
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*`
_output_shapesN
L:::::::::::::::::::*!
dtypes
2		[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:Ä
AssignVariableOpAssignVariableOp1assignvariableop_encoder_2_embedding_4_embeddingsIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Ë
AssignVariableOp_1AssignVariableOp4assignvariableop_1_encoder_2_gru_4_gru_cell_4_kernelIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Ő
AssignVariableOp_2AssignVariableOp>assignvariableop_2_encoder_2_gru_4_gru_cell_4_recurrent_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:É
AssignVariableOp_3AssignVariableOp2assignvariableop_3_encoder_2_gru_4_gru_cell_4_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Đ
AssignVariableOp_4AssignVariableOp9assignvariableop_4_while_decoder_2_embedding_5_embeddingsIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:Ń
AssignVariableOp_5AssignVariableOp:assignvariableop_5_while_decoder_2_gru_5_gru_cell_5_kernelIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:Ű
AssignVariableOp_6AssignVariableOpDassignvariableop_6_while_decoder_2_gru_5_gru_cell_5_recurrent_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Ď
AssignVariableOp_7AssignVariableOp8assignvariableop_7_while_decoder_2_gru_5_gru_cell_5_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Ţ
AssignVariableOp_8AssignVariableOpGassignvariableop_8_while_decoder_2_bahdanau_attention_3_dense_10_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Ţ
AssignVariableOp_9AssignVariableOpGassignvariableop_9_while_decoder_2_bahdanau_attention_3_dense_11_kernelIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:ě
AssignVariableOp_10AssignVariableOpSassignvariableop_10_while_decoder_2_bahdanau_attention_3_additive_attention_3_scaleIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Ě
AssignVariableOp_11AssignVariableOp3assignvariableop_11_while_decoder_2_dense_12_kernelIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:Ě
AssignVariableOp_12AssignVariableOp3assignvariableop_12_while_decoder_2_dense_13_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:Ę
AssignVariableOp_13AssignVariableOp1assignvariableop_13_while_decoder_2_dense_13_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0¸
2MutableHashTable_table_restore/LookupTableImportV2LookupTableImportV2Emutablehashtable_table_restore_lookuptableimportv2_mutablehashtable_1RestoreV2:tensors:14RestoreV2:tensors:15*	
Tin0*

Tout0	*%
_class
loc:@MutableHashTable_1*&
 _has_manual_control_dependencies(*
_output_shapes
 ¸
4MutableHashTable_table_restore_1/LookupTableImportV2LookupTableImportV2Emutablehashtable_table_restore_1_lookuptableimportv2_mutablehashtableRestoreV2:tensors:16RestoreV2:tensors:17*	
Tin0*

Tout0	*#
_class
loc:@MutableHashTable*&
 _has_manual_control_dependencies(*
_output_shapes
 Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 ď
Identity_14Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_93^MutableHashTable_table_restore/LookupTableImportV25^MutableHashTable_table_restore_1/LookupTableImportV2^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_15IdentityIdentity_14:output:0^NoOp_1*
T0*
_output_shapes
: Ü
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_93^MutableHashTable_table_restore/LookupTableImportV25^MutableHashTable_table_restore_1/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "#
identity_15Identity_15:output:0*5
_input_shapes$
": : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92h
2MutableHashTable_table_restore/LookupTableImportV22MutableHashTable_table_restore/LookupTableImportV22l
4MutableHashTable_table_restore_1/LookupTableImportV24MutableHashTable_table_restore_1/LookupTableImportV2:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:+'
%
_class
loc:@MutableHashTable_1:)%
#
_class
loc:@MutableHashTable
ý˝
ł
__inference_tf_translate_222510

input_textO
Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handleP
Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	@
-encoder_2_embedding_4_embedding_lookup_221362:	-@
,encoder_2_gru_4_read_readvariableop_resource:
B
.encoder_2_gru_4_read_1_readvariableop_resource:
A
.encoder_2_gru_4_read_2_readvariableop_resource:	

fill_value	!
while_input_11:	/"
while_input_12:
"
while_input_13:
!
while_input_14:	"
while_input_15:
"
while_input_16:

while_input_18:	"
while_input_19:
!
while_input_20:	/
while_input_21:/
while_input_22	>
:string_lookup_6_none_lookup_lookuptablefindv2_table_handle?
;string_lookup_6_none_lookup_lookuptablefindv2_default_value
string_lookup_6_equal_y	
string_lookup_6_selectv2_t
identity

identity_1˘&encoder_2/embedding_4/embedding_lookup˘#encoder_2/gru_4/Read/ReadVariableOp˘%encoder_2/gru_4/Read_1/ReadVariableOp˘%encoder_2/gru_4/Read_2/ReadVariableOp˘-string_lookup_6/None_Lookup/LookupTableFindV2˘>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2˘whileM
ShapeShape
input_text*
T0*
_output_shapes
::íĎ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
text_vectorization/StringStripStringStrip
input_text*#
_output_shapes
:˙˙˙˙˙˙˙˙˙n
&text_vectorization/StringJoin/inputs_0Const*
_output_shapes
: *
dtype0*
valueB B[START]l
&text_vectorization/StringJoin/inputs_2Const*
_output_shapes
: *
dtype0*
valueB B[END]ö
text_vectorization/StringJoin
StringJoin/text_vectorization/StringJoin/inputs_0:output:0'text_vectorization/StringStrip:output:0/text_vectorization/StringJoin/inputs_2:output:0*
N*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	separator e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B Ň
,text_vectorization/StringSplit/StringSplitV2StringSplitV2&text_vectorization/StringJoin:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¤
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ű
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_maskŃ
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙Č
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ö
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
::íĎŠ
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ű
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: Ľ
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ä
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ý
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: Ť
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: Ě
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: Ą
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ů
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: Ě
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: Í
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: Ń
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ¤
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ş
gtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙ç
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ReshapeReshapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0ptext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shape:output:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙Ű
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountjtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape:output:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : á
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙Ş
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R 
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ë
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙á
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙ž
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tGtext_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDSž
&encoder_2/embedding_4/embedding_lookupResourceGather-encoder_2_embedding_4_embedding_lookup_221362?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0*
Tindices0	*@
_class6
42loc:@encoder_2/embedding_4/embedding_lookup/221362*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
dtype0î
/encoder_2/embedding_4/embedding_lookup/IdentityIdentity/encoder_2/embedding_4/embedding_lookup:output:0*
T0*@
_class6
42loc:@encoder_2/embedding_4/embedding_lookup/221362*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙ˇ
1encoder_2/embedding_4/embedding_lookup/Identity_1Identity8encoder_2/embedding_4/embedding_lookup/Identity:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
encoder_2/gru_4/ShapeShape:encoder_2/embedding_4/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
::íĎm
#encoder_2/gru_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%encoder_2/gru_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%encoder_2/gru_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ą
encoder_2/gru_4/strided_sliceStridedSliceencoder_2/gru_4/Shape:output:0,encoder_2/gru_4/strided_slice/stack:output:0.encoder_2/gru_4/strided_slice/stack_1:output:0.encoder_2/gru_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
encoder_2/gru_4/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ł
encoder_2/gru_4/zeros/packedPack&encoder_2/gru_4/strided_slice:output:0'encoder_2/gru_4/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
encoder_2/gru_4/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
encoder_2/gru_4/zerosFill%encoder_2/gru_4/zeros/packed:output:0$encoder_2/gru_4/zeros/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#encoder_2/gru_4/Read/ReadVariableOpReadVariableOp,encoder_2_gru_4_read_readvariableop_resource* 
_output_shapes
:
*
dtype0|
encoder_2/gru_4/IdentityIdentity+encoder_2/gru_4/Read/ReadVariableOp:value:0*
T0* 
_output_shapes
:

%encoder_2/gru_4/Read_1/ReadVariableOpReadVariableOp.encoder_2_gru_4_read_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
encoder_2/gru_4/Identity_1Identity-encoder_2/gru_4/Read_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:

%encoder_2/gru_4/Read_2/ReadVariableOpReadVariableOp.encoder_2_gru_4_read_2_readvariableop_resource*
_output_shapes
:	*
dtype0
encoder_2/gru_4/Identity_2Identity-encoder_2/gru_4/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	
encoder_2/gru_4/PartitionedCallPartitionedCall:encoder_2/embedding_4/embedding_lookup/Identity_1:output:0encoder_2/gru_4/zeros:output:0!encoder_2/gru_4/Identity:output:0#encoder_2/gru_4/Identity_1:output:0#encoder_2/gru_4/Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *_
_output_shapesM
K:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *(
f#R!
__inference_standard_gru_221525M
Fill/dims/1Const*
_output_shapes
: *
dtype0*
value	B :m
	Fill/dimsPackstrided_slice:output:0Fill/dims/1:output:0*
N*
T0*
_output_shapes
:^
FillFillFill/dims:output:0
fill_value*
T0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙f
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙\
TensorArrayV2/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :ż
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0#TensorArrayV2/num_elements:output:0*
_output_shapes
: *
element_dtype0	*

shape_type0:éčĐh
TensorArrayV2_1/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Ĺ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:M
zeros/ConstConst*
_output_shapes
: *
dtype0
*
value	B
 Z l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0
*'
_output_shapes
:˙˙˙˙˙˙˙˙˙M
range/startConst*
_output_shapes
: *
dtype0*
value	B : M
range/limitConst*
_output_shapes
: *
dtype0*
value	B :2M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :l
rangeRangerange/start:output:0range/limit:output:0range/delta:output:0*
_output_shapes
:2W
subSubrange/limit:output:0range/start:output:0*
T0*
_output_shapes
: T
floordivFloorDivsub:z:0range/delta:output:0*
T0*
_output_shapes
: O
modFloorModsub:z:0range/delta:output:0*
T0*
_output_shapes
: L

zeros_likeConst*
_output_shapes
: *
dtype0*
value	B : S
NotEqualNotEqualmod:z:0zeros_like:output:0*
T0*
_output_shapes
: J
CastCastNotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
: E
addAddV2floordiv:z:0Cast:y:0*
T0*
_output_shapes
: N
zeros_like_1Const*
_output_shapes
: *
dtype0*
value	B : S
MaximumMaximumadd:z:0zeros_like_1:output:0*
T0*
_output_shapes
: G
ConstConst*
_output_shapes
: *
dtype0
*
value	B
 Z c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 	
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0range/start:output:0TensorArrayV2_1:handle:0TensorArrayV2:handle:0Const:output:0(encoder_2/gru_4/PartitionedCall:output:2zeros:output:0Fill:output:0range/limit:output:0?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0while_input_11while_input_12while_input_13while_input_14while_input_15while_input_16(encoder_2/gru_4/PartitionedCall:output:1while_input_18while_input_19while_input_20while_input_21while_input_22range/delta:output:0*!
T
2

			*
_lower_using_switch_merge(*
_num_original_outputs*ł
_output_shapes 
: : : : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : : : : :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : : : : *,
_read_only_resource_inputs

*
_stateful_parallelism( *
bodyR
while_body_221768*
condR
while_cond_221767*˛
output_shapes 
: : : : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : : : : :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : : : : 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:49TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
element_dtype0	
SqueezeSqueeze+TensorArrayV2Stack/TensorListStack:tensor:0*
T0	*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
squeeze_dims

˙˙˙˙˙˙˙˙˙_
transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       |
	transpose	TransposeSqueeze:output:0transpose/perm:output:0*
T0	*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
-string_lookup_6/None_Lookup/LookupTableFindV2LookupTableFindV2:string_lookup_6_none_lookup_lookuptablefindv2_table_handletranspose:y:0;string_lookup_6_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
string_lookup_6/EqualEqualtranspose:y:0string_lookup_6_equal_y*
T0	*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙Î
string_lookup_6/SelectV2SelectV2string_lookup_6/Equal:z:0string_lookup_6_selectv2_t6string_lookup_6/None_Lookup/LookupTableFindV2:values:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙i
'ReduceJoin/ReduceJoin/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :Ż
ReduceJoin/ReduceJoin
ReduceJoin!string_lookup_6/SelectV2:output:00ReduceJoin/ReduceJoin/reduction_indices:output:0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	separator _
StringStripStringStripReduceJoin/ReduceJoin:output:0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
2TensorArrayV2Stack_1/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"˙˙˙˙   ˙˙˙˙Ü
$TensorArrayV2Stack_1/TensorListStackTensorListStackwhile:output:3;TensorArrayV2Stack_1/TensorListStack/element_shape:output:0*A
_output_shapes/
-:+˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
element_dtype0˘
	Squeeze_1Squeeze-TensorArrayV2Stack_1/TensorListStack:tensor:0*
T0*=
_output_shapes+
):'˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
squeeze_dims
e
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	TransposeSqueeze_1:output:0transpose_1/perm:output:0*
T0*=
_output_shapes+
):'˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙t
IdentityIdentitytranspose_1:y:0^NoOp*
T0*=
_output_shapes+
):'˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙a

Identity_1IdentityStringStrip:output:0^NoOp*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙Ţ
NoOpNoOp'^encoder_2/embedding_4/embedding_lookup$^encoder_2/gru_4/Read/ReadVariableOp&^encoder_2/gru_4/Read_1/ReadVariableOp&^encoder_2/gru_4/Read_2/ReadVariableOp.^string_lookup_6/None_Lookup/LookupTableFindV2?^text_vectorization/string_lookup/None_Lookup/LookupTableFindV2^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : : : : : : : : : : : : : : 2P
&encoder_2/embedding_4/embedding_lookup&encoder_2/embedding_4/embedding_lookup2J
#encoder_2/gru_4/Read/ReadVariableOp#encoder_2/gru_4/Read/ReadVariableOp2N
%encoder_2/gru_4/Read_1/ReadVariableOp%encoder_2/gru_4/Read_1/ReadVariableOp2N
%encoder_2/gru_4/Read_2/ReadVariableOp%encoder_2/gru_4/Read_2/ReadVariableOp2^
-string_lookup_6/None_Lookup/LookupTableFindV2-string_lookup_6/None_Lookup/LookupTableFindV22
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2>text_vectorization/string_lookup/None_Lookup/LookupTableFindV22
whilewhile:O K
#
_output_shapes
:˙˙˙˙˙˙˙˙˙
$
_user_specified_name
input_text:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
ź
ć

:__inference___backward_gpu_gru_with_fallback_225657_225793
placeholder
placeholder_1
placeholder_2
placeholder_3/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_7_grad_invertpermutation_transpose_7_perm)
%gradients_squeeze_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙n
gradients/grad_ys_1Identityplaceholder_1*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙a
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙O
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: 
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
::íĎ
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:Ť
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
shrink_axis_mask
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:Á
$gradients/transpose_7_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
::íĎĽ
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_7_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙a
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: g
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:ô
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*X
_output_shapesF
D:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: :°đ*
rnn_modegru
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ú
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
::íĎĆ
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: g
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:@i
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:@i
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:@h
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:h
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:h
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:h
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::ç
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes

:ë
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes

:ë
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes

:ë
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes

:@ë
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:@ë
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:@ę
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:ę
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:ę
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:ę
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:í
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:í
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Ľ
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
i
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:˘
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes	
:i
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:˘
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:i
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:˘
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¤
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ľ
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ľ
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:š
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:š
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:š
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:š
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:š
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:š
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:0
gradients/split_grad/concatConcatV2(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0* 
_output_shapes
:

gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ˘
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	|
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙u

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g

Identity_2Identity$gradients/split_grad/concat:output:0*
T0* 
_output_shapes
:
i

Identity_3Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
i

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0*
T0*
_output_shapes
:	"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*Ż
_input_shapes
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙::˙˙˙˙˙˙˙˙˙: ::˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: :°đ::˙˙˙˙˙˙˙˙˙: ::::::: : : *<
api_implements*(gru_07955a2a-cea5-4ff8-b194-1e634df5f32e*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_225792*
go_backwards( *

time_major( :. *
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:;7
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :;7
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: 

_output_shapes
::2.
,
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :

_output_shapes
::;	7
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:2
.
,
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :#

_output_shapes
	:°đ: 

_output_shapes
::.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
¸?
ź
&__forward_gpu_gru_with_fallback_223724

inputs
init_h_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
cudnnrnn
transpose_7_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
cudnnrnn_input_c

concat
transpose_perm

init_h
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dimc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : r

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*8
_output_shapes&
$:
:
:
*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*8
_output_shapes&
$:
:
:
*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:0S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*>
_output_shapes,
*::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:@a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:@a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:@\
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:\
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:]

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:]

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ż
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Ů
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*S
_output_shapesA
?:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ć
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙q
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g

Identity_1Identitytranspose_7:y:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:
:
:	*<
api_implements*(gru_4bea4fd2-303a-4944-b50d-a22864d0be38*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_223589_223725*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_h:HD
 
_output_shapes
:

 
_user_specified_namekernel:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	

_user_specified_namebias
É5
Ż
(__inference_gpu_gru_with_fallback_224499

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : p

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*8
_output_shapes&
$:
:
:
*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*8
_output_shapes&
$:
:
:
*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:0S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*>
_output_shapes,
*::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:@a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:@a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:@\
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:\
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:]

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:]

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ě
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes
	:°đU
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Ő
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*S
_output_shapesA
?:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ć
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙q
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g

Identity_1Identitytranspose_7:y:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:
:
:	*<
api_implements*(gru_2335fbf9-8a5a-435e-acc1-6b0e0fd5358f*
api_preferred_deviceGPU*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_h:HD
 
_output_shapes
:

 
_user_specified_namekernel:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	

_user_specified_namebias
Ť
Ř
)while_TensorArrayV2Write_cond_true_2223107
3while_tensorarrayv2write_cond_add_while_placeholderF
Bwhile_tensorarrayv2write_cond_tensorlistresize_while_placeholder_1*
&while_tensorarrayv2write_cond_identitye
#while/TensorArrayV2Write/cond/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ž
!while/TensorArrayV2Write/cond/addAddV23while_tensorarrayv2write_cond_add_while_placeholder,while/TensorArrayV2Write/cond/add/y:output:0*
T0*
_output_shapes
: Ĺ
.while/TensorArrayV2Write/cond/TensorListResizeTensorListResizeBwhile_tensorarrayv2write_cond_tensorlistresize_while_placeholder_1%while/TensorArrayV2Write/cond/add:z:0*
_output_shapes
: 
&while/TensorArrayV2Write/cond/IdentityIdentity>while/TensorArrayV2Write/cond/TensorListResize:output_handle:0*
T0*
_output_shapes
: "Y
&while_tensorarrayv2write_cond_identity/while/TensorArrayV2Write/cond/Identity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : 

_output_shapes
: :

_output_shapes
: 
Ń
;
__inference__creator_225801
identity˘
hash_tablen

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0	*
shared_name172201*
value_dtype0W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: S
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table

-
__inference__destroyer_225832
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 

G
__inference__creator_225837
identity: ˘MutableHashTable}
MutableHashTableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name
table_36*
value_dtype0	]
IdentityIdentityMutableHashTable:table_handle:0^NoOp*
T0*
_output_shapes
: Y
NoOpNoOp^MutableHashTable*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2$
MutableHashTableMutableHashTable
Đ
Ó
A__inference_gru_5_layer_call_and_return_conditional_losses_225796
inputs_00
read_readvariableop_resource:
2
read_1_readvariableop_resource:
1
read_2_readvariableop_resource:	

identity_3

identity_4˘Read/ReadVariableOp˘Read_1/ReadVariableOp˘Read_2/ReadVariableOpK
ShapeShapeinputs_0*
T0*
_output_shapes
::íĎ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙r
Read/ReadVariableOpReadVariableOpread_readvariableop_resource* 
_output_shapes
:
*
dtype0\
IdentityIdentityRead/ReadVariableOp:value:0*
T0* 
_output_shapes
:
v
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource* 
_output_shapes
:
*
dtype0`

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
u
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes
:	*
dtype0_

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	
PartitionedCallPartitionedCallinputs_0zeros:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *_
_output_shapesM
K:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *(
f#R!
__inference_standard_gru_225580w

Identity_3IdentityPartitionedCall:output:1^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙j

Identity_4IdentityPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:_ [
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs_0
ş
Ľ
__inference_save_fn_225899
checkpoint_keyP
Lmutablehashtable_lookup_table_export_values_lookuptableexportv2_table_handle
identity

identity_1

identity_2

identity_3

identity_4

identity_5	˘?MutableHashTable_lookup_table_export_values/LookupTableExportV2
?MutableHashTable_lookup_table_export_values/LookupTableExportV2LookupTableExportV2Lmutablehashtable_lookup_table_export_values_lookuptableexportv2_table_handle",/job:localhost/replica:0/task:0/device:CPU:0*
Tkeys0*
Tvalues0	*
_output_shapes

::K
add/yConst*
_output_shapes
: *
dtype0*
valueB B-keysK
addAddcheckpoint_keyadd/y:output:0*
T0*
_output_shapes
: O
add_1/yConst*
_output_shapes
: *
dtype0*
valueB B-valuesO
add_1Addcheckpoint_keyadd_1/y:output:0*
T0*
_output_shapes
: E
IdentityIdentityadd:z:0^NoOp*
T0*
_output_shapes
: F
ConstConst*
_output_shapes
: *
dtype0*
valueB B N

Identity_1IdentityConst:output:0^NoOp*
T0*
_output_shapes
: 

Identity_2IdentityFMutableHashTable_lookup_table_export_values/LookupTableExportV2:keys:0^NoOp*
T0*
_output_shapes
:I

Identity_3Identity	add_1:z:0^NoOp*
T0*
_output_shapes
: H
Const_1Const*
_output_shapes
: *
dtype0*
valueB B P

Identity_4IdentityConst_1:output:0^NoOp*
T0*
_output_shapes
: 

Identity_5IdentityHMutableHashTable_lookup_table_export_values/LookupTableExportV2:values:0^NoOp*
T0	*
_output_shapes
:
NoOpNoOp@^MutableHashTable_lookup_table_export_values/LookupTableExportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 2
?MutableHashTable_lookup_table_export_values/LookupTableExportV2?MutableHashTable_lookup_table_export_values/LookupTableExportV2:F B

_output_shapes
: 
(
_user_specified_namecheckpoint_key"ó
L
saver_filename:0StatefulPartitionedCall_4:0StatefulPartitionedCall_58"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*ú
serving_defaultć
=

input_text/
serving_default_input_text:0˙˙˙˙˙˙˙˙˙S
	attentionF
StatefulPartitionedCall:0'˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙4
text,
StatefulPartitionedCall:1˙˙˙˙˙˙˙˙˙tensorflow/serving/predict:
ł
encoder
decoder
input_text_processor
output_text_processor
"output_token_string_from_index
tf_translate

signatures"
_generic_user_object
˝
	variables
	trainable_variables

regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	embedding
gru"
_tf_keras_layer
Ü
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	embedding
gru
	attention
Wc
fc"
_tf_keras_layer
P
	keras_api
_lookup_layer
_adapt_function"
_tf_keras_layer
P
	keras_api
_lookup_layer
 _adapt_function"
_tf_keras_layer
P
!	keras_api
"input_vocabulary
#lookup_table"
_tf_keras_layer
ô
$trace_02×
__inference_tf_translate_222510ł
˛
FullArgSpec
args
j
input_text
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *˘
˙˙˙˙˙˙˙˙˙z$trace_0
,
%serving_default"
signature_map
<
&0
'1
(2
)3"
trackable_list_wrapper
<
&0
'1
(2
)3"
trackable_list_wrapper
 "
trackable_list_wrapper
­
*non_trainable_variables

+layers
,metrics
-layer_regularization_losses
.layer_metrics
	variables
	trainable_variables

regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
É2ĆĂ
ź˛¸
FullArgSpec
args
jtokens
jstate
varargs
 
varkw
 
defaults˘

 

kwonlyargs

jtraining%
kwonlydefaultsŞ

trainingp 
annotationsŞ *
 
É2ĆĂ
ź˛¸
FullArgSpec
args
jtokens
jstate
varargs
 
varkw
 
defaults˘

 

kwonlyargs

jtraining%
kwonlydefaultsŞ

trainingp 
annotationsŞ *
 
ľ
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses
&
embeddings"
_tf_keras_layer
Ú
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses
;_random_generator
<cell
=
state_spec"
_tf_keras_rnn_layer
f
>0
?1
@2
A3
B4
C5
D6
E7
F8
G9"
trackable_list_wrapper
f
>0
?1
@2
A3
B4
C5
D6
E7
F8
G9"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Hnon_trainable_variables

Ilayers
Jmetrics
Klayer_regularization_losses
Llayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
É2ĆĂ
ź˛¸
FullArgSpec
args
jinputs
jstate
varargs
 
varkw
 
defaults˘

 

kwonlyargs

jtraining%
kwonlydefaultsŞ

trainingp 
annotationsŞ *
 
É2ĆĂ
ź˛¸
FullArgSpec
args
jinputs
jstate
varargs
 
varkw
 
defaults˘

 

kwonlyargs

jtraining%
kwonlydefaultsŞ

trainingp 
annotationsŞ *
 
ľ
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
Q__call__
*R&call_and_return_all_conditional_losses
>
embeddings"
_tf_keras_layer
Ú
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
W__call__
*X&call_and_return_all_conditional_losses
Y_random_generator
Zcell
[
state_spec"
_tf_keras_rnn_layer
Ä
\	variables
]trainable_variables
^regularization_losses
_	keras_api
`__call__
*a&call_and_return_all_conditional_losses
bW1
cW2
d	attention"
_tf_keras_layer
ą
e	variables
ftrainable_variables
gregularization_losses
h	keras_api
i__call__
*j&call_and_return_all_conditional_losses

Ekernel"
_tf_keras_layer
ť
k	variables
ltrainable_variables
mregularization_losses
n	keras_api
o__call__
*p&call_and_return_all_conditional_losses

Fkernel
Gbias"
_tf_keras_layer
"
_generic_user_object
L
q	keras_api
rlookup_table
stoken_counts"
_tf_keras_layer
Ů
ttrace_02ź
__inference_adapt_step_224184
˛
FullArgSpec
args

jiterator
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zttrace_0
"
_generic_user_object
L
u	keras_api
vlookup_table
wtoken_counts"
_tf_keras_layer
Ů
xtrace_02ź
__inference_adapt_step_224236
˛
FullArgSpec
args

jiterator
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zxtrace_0
"
_generic_user_object
 "
trackable_list_wrapper
f
y_initializer
z_create_resource
{_initialize
|_destroy_resourceR jtf.StaticHashTable
ę
}	capture_1
~	capture_2
	capture_3
	capture_8

capture_19

capture_21

capture_22

capture_23Bĺ
__inference_tf_translate_222510
input_text"ł
˛
FullArgSpec
args
j
input_text
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *˘
˙˙˙˙˙˙˙˙˙z}	capture_1z~	capture_2z	capture_3z	capture_8z
capture_19z
capture_21z
capture_22z
capture_23
Đ
}	capture_1
~	capture_2
	capture_3
	capture_8

capture_19

capture_21

capture_22

capture_23BË
$__inference_signature_wrapper_222567
input_text"
˛
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 z}	capture_1z~	capture_2z	capture_3z	capture_8z
capture_19z
capture_21z
capture_22z
capture_23
3:1	-2 encoder_2/embedding_4/embeddings
5:3
2!encoder_2/gru_4/gru_cell_4/kernel
?:=
2+encoder_2/gru_4/gru_cell_4/recurrent_kernel
2:0	2encoder_2/gru_4/gru_cell_4/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
'
&0"
trackable_list_wrapper
'
&0"
trackable_list_wrapper
 "
trackable_list_wrapper
˛
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses"
_generic_user_object
2
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
2
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
5
'0
(1
)2"
trackable_list_wrapper
5
'0
(1
)2"
trackable_list_wrapper
 "
trackable_list_wrapper
ż
states
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
5	variables
6trainable_variables
7regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses"
_generic_user_object
Ř
trace_0
trace_12
&__inference_gru_4_layer_call_fn_224249
&__inference_gru_4_layer_call_fn_224262Ę
Ă˛ż
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults˘

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 ztrace_0ztrace_1

trace_0
trace_12Ó
A__inference_gru_4_layer_call_and_return_conditional_losses_224639
A__inference_gru_4_layer_call_and_return_conditional_losses_225016Ę
Ă˛ż
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults˘

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 ztrace_0ztrace_1
"
_generic_user_object
ď
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
_random_generator

'kernel
(recurrent_kernel
)bias"
_tf_keras_layer
 "
trackable_list_wrapper
9:7	/2&while/decoder_2/embedding_5/embeddings
;:9
2'while/decoder_2/gru_5/gru_cell_5/kernel
E:C
21while/decoder_2/gru_5/gru_cell_5/recurrent_kernel
8:6	2%while/decoder_2/gru_5/gru_cell_5/bias
H:F
24while/decoder_2/bahdanau_attention_3/dense_10/kernel
H:F
24while/decoder_2/bahdanau_attention_3/dense_11/kernel
N:L2?while/decoder_2/bahdanau_attention_3/additive_attention_3/scale
3:1
2while/decoder_2/dense_12/kernel
2:0	/2while/decoder_2/dense_13/kernel
+:)/2while/decoder_2/dense_13/bias
 "
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
'
>0"
trackable_list_wrapper
'
>0"
trackable_list_wrapper
 "
trackable_list_wrapper
˛
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses"
_generic_user_object
2
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
2
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
5
?0
@1
A2"
trackable_list_wrapper
5
?0
@1
A2"
trackable_list_wrapper
 "
trackable_list_wrapper
ż
 states
Ąnon_trainable_variables
˘layers
Łmetrics
 ¤layer_regularization_losses
Ľlayer_metrics
S	variables
Ttrainable_variables
Uregularization_losses
W__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses"
_generic_user_object
Ř
Śtrace_0
§trace_12
&__inference_gru_5_layer_call_fn_225029
&__inference_gru_5_layer_call_fn_225042Ę
Ă˛ż
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults˘

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zŚtrace_0z§trace_1

¨trace_0
Štrace_12Ó
A__inference_gru_5_layer_call_and_return_conditional_losses_225419
A__inference_gru_5_layer_call_and_return_conditional_losses_225796Ę
Ă˛ż
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults˘

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 z¨trace_0zŠtrace_1
"
_generic_user_object
ď
Ş	variables
Ťtrainable_variables
Źregularization_losses
­	keras_api
Ž__call__
+Ż&call_and_return_all_conditional_losses
°_random_generator

?kernel
@recurrent_kernel
Abias"
_tf_keras_layer
 "
trackable_list_wrapper
5
B0
C1
D2"
trackable_list_wrapper
5
B0
C1
D2"
trackable_list_wrapper
 "
trackable_list_wrapper
˛
ąnon_trainable_variables
˛layers
łmetrics
 ´layer_regularization_losses
ľlayer_metrics
\	variables
]trainable_variables
^regularization_losses
`__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses"
_generic_user_object
Ë2ČĹ
ž˛ş
FullArgSpec%
args
jquery
jvalue
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsŞ

trainingp 
annotationsŞ *
 
Ë2ČĹ
ž˛ş
FullArgSpec%
args
jquery
jvalue
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsŞ

trainingp 
annotationsŞ *
 
ˇ
ś	variables
ˇtrainable_variables
¸regularization_losses
š	keras_api
ş__call__
+ť&call_and_return_all_conditional_losses

Bkernel"
_tf_keras_layer
ˇ
ź	variables
˝trainable_variables
žregularization_losses
ż	keras_api
Ŕ__call__
+Á&call_and_return_all_conditional_losses

Ckernel"
_tf_keras_layer
Î
Â	variables
Ătrainable_variables
Äregularization_losses
Ĺ	keras_api
Ć__call__
+Ç&call_and_return_all_conditional_losses
Č_random_generator
	Dscale"
_tf_keras_layer
'
E0"
trackable_list_wrapper
'
E0"
trackable_list_wrapper
 "
trackable_list_wrapper
˛
Énon_trainable_variables
Ęlayers
Ëmetrics
 Ělayer_regularization_losses
Ílayer_metrics
e	variables
ftrainable_variables
gregularization_losses
i__call__
*j&call_and_return_all_conditional_losses
&j"call_and_return_conditional_losses"
_generic_user_object
2
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
2
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
.
F0
G1"
trackable_list_wrapper
.
F0
G1"
trackable_list_wrapper
 "
trackable_list_wrapper
˛
Înon_trainable_variables
Ďlayers
Đmetrics
 Ńlayer_regularization_losses
Ňlayer_metrics
k	variables
ltrainable_variables
mregularization_losses
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses"
_generic_user_object
2
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
2
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
"
_generic_user_object
j
Ó_initializer
Ô_create_resource
Ő_initialize
Ö_destroy_resourceR jtf.StaticHashTable
T
×_create_resource
Ř_initialize
Ů_destroy_resourceR Z
table
ë
Ú	capture_1BČ
__inference_adapt_step_224184iterator"
˛
FullArgSpec
args

jiterator
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zÚ	capture_1
"
_generic_user_object
j
Ű_initializer
Ü_create_resource
Ý_initialize
Ţ_destroy_resourceR jtf.StaticHashTable
T
ß_create_resource
ŕ_initialize
á_destroy_resourceR Z
table
ë
â	capture_1BČ
__inference_adapt_step_224236iterator"
˛
FullArgSpec
args

jiterator
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zâ	capture_1
"
_generic_user_object
Î
ătrace_02Ż
__inference__creator_225801
˛
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *˘ zătrace_0
Ň
ätrace_02ł
__inference__initializer_225809
˛
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *˘ zätrace_0
Đ
ĺtrace_02ą
__inference__destroyer_225814
˛
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *˘ zĺtrace_0
"J

Const_10jtf.TrackableConstant
!J	
Const_9jtf.TrackableConstant
!J	
Const_8jtf.TrackableConstant
"J

Const_15jtf.TrackableConstant
"J

Const_14jtf.TrackableConstant
"J

Const_13jtf.TrackableConstant
"J

Const_12jtf.TrackableConstant
"J

Const_11jtf.TrackableConstant
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
<0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
&__inference_gru_4_layer_call_fn_224249inputs_0"Ę
Ă˛ż
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults˘

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
&__inference_gru_4_layer_call_fn_224262inputs_0"Ę
Ă˛ż
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults˘

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
A__inference_gru_4_layer_call_and_return_conditional_losses_224639inputs_0"Ę
Ă˛ż
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults˘

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
A__inference_gru_4_layer_call_and_return_conditional_losses_225016inputs_0"Ę
Ă˛ż
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults˘

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
5
'0
(1
)2"
trackable_list_wrapper
5
'0
(1
)2"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ćnon_trainable_variables
çlayers
čmetrics
 élayer_regularization_losses
ęlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
š2śł
Ź˛¨
FullArgSpec+
args# 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults˘
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
š2śł
Ź˛¨
FullArgSpec+
args# 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults˘
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
Z0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
&__inference_gru_5_layer_call_fn_225029inputs_0"Ę
Ă˛ż
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults˘

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
&__inference_gru_5_layer_call_fn_225042inputs_0"Ę
Ă˛ż
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults˘

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
A__inference_gru_5_layer_call_and_return_conditional_losses_225419inputs_0"Ę
Ă˛ż
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults˘

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
A__inference_gru_5_layer_call_and_return_conditional_losses_225796inputs_0"Ę
Ă˛ż
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults˘

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
5
?0
@1
A2"
trackable_list_wrapper
5
?0
@1
A2"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ënon_trainable_variables
ělayers
ímetrics
 îlayer_regularization_losses
ďlayer_metrics
Ş	variables
Ťtrainable_variables
Źregularization_losses
Ž__call__
+Ż&call_and_return_all_conditional_losses
'Ż"call_and_return_conditional_losses"
_generic_user_object
š2śł
Ź˛¨
FullArgSpec+
args# 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults˘
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
š2śł
Ź˛¨
FullArgSpec+
args# 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults˘
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
"
_generic_user_object
 "
trackable_list_wrapper
5
b0
c1
d2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
'
B0"
trackable_list_wrapper
'
B0"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
đnon_trainable_variables
ńlayers
ňmetrics
 ólayer_regularization_losses
ôlayer_metrics
ś	variables
ˇtrainable_variables
¸regularization_losses
ş__call__
+ť&call_and_return_all_conditional_losses
'ť"call_and_return_conditional_losses"
_generic_user_object
2
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
2
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
'
C0"
trackable_list_wrapper
'
C0"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
őnon_trainable_variables
ölayers
÷metrics
 řlayer_regularization_losses
ůlayer_metrics
ź	variables
˝trainable_variables
žregularization_losses
Ŕ__call__
+Á&call_and_return_all_conditional_losses
'Á"call_and_return_conditional_losses"
_generic_user_object
2
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
2
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
'
D0"
trackable_list_wrapper
'
D0"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
únon_trainable_variables
űlayers
ümetrics
 ýlayer_regularization_losses
ţlayer_metrics
Â	variables
Ătrainable_variables
Äregularization_losses
Ć__call__
+Ç&call_and_return_all_conditional_losses
'Ç"call_and_return_conditional_losses"
_generic_user_object
ń2îë
ä˛ŕ
FullArgSpecW
argsOL
jinputs
jmask

jtraining
jreturn_attention_scores
juse_causal_mask
varargs
 
varkw
 
defaults˘

 
p 
p 
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ń2îë
ä˛ŕ
FullArgSpecW
argsOL
jinputs
jmask

jtraining
jreturn_attention_scores
juse_causal_mask
varargs
 
varkw
 
defaults˘

 
p 
p 
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
"
_generic_user_object
Î
˙trace_02Ż
__inference__creator_225819
˛
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *˘ z˙trace_0
Ň
trace_02ł
__inference__initializer_225827
˛
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *˘ ztrace_0
Đ
trace_02ą
__inference__destroyer_225832
˛
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *˘ ztrace_0
Î
trace_02Ż
__inference__creator_225837
˛
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *˘ ztrace_0
Ň
trace_02ł
__inference__initializer_225842
˛
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *˘ ztrace_0
Đ
trace_02ą
__inference__destroyer_225847
˛
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *˘ ztrace_0
!J	
Const_7jtf.TrackableConstant
"
_generic_user_object
Î
trace_02Ż
__inference__creator_225852
˛
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *˘ ztrace_0
Ň
trace_02ł
__inference__initializer_225860
˛
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *˘ ztrace_0
Đ
trace_02ą
__inference__destroyer_225865
˛
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *˘ ztrace_0
Î
trace_02Ż
__inference__creator_225870
˛
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *˘ ztrace_0
Ň
trace_02ł
__inference__initializer_225875
˛
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *˘ ztrace_0
Đ
trace_02ą
__inference__destroyer_225880
˛
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *˘ ztrace_0
!J	
Const_6jtf.TrackableConstant
˛BŻ
__inference__creator_225801"
˛
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *˘ 
ö
	capture_1
	capture_2Bł
__inference__initializer_225809"
˛
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *˘ z	capture_1z	capture_2
´Bą
__inference__destroyer_225814"
˛
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *˘ 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
˛BŻ
__inference__creator_225819"
˛
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *˘ 
ö
	capture_1
	capture_2Bł
__inference__initializer_225827"
˛
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *˘ z	capture_1z	capture_2
´Bą
__inference__destroyer_225832"
˛
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *˘ 
˛BŻ
__inference__creator_225837"
˛
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *˘ 
śBł
__inference__initializer_225842"
˛
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *˘ 
´Bą
__inference__destroyer_225847"
˛
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *˘ 
˛BŻ
__inference__creator_225852"
˛
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *˘ 
ö
	capture_1
	capture_2Bł
__inference__initializer_225860"
˛
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *˘ z	capture_1z	capture_2
´Bą
__inference__destroyer_225865"
˛
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *˘ 
˛BŻ
__inference__creator_225870"
˛
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *˘ 
śBł
__inference__initializer_225875"
˛
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *˘ 
´Bą
__inference__destroyer_225880"
˛
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *˘ 
!J	
Const_5jtf.TrackableConstant
!J	
Const_4jtf.TrackableConstant
!J	
Const_3jtf.TrackableConstant
!J	
Const_2jtf.TrackableConstant
J
Constjtf.TrackableConstant
!J	
Const_1jtf.TrackableConstant
ŢBŰ
__inference_save_fn_225899checkpoint_key"Ş
˛
FullArgSpec
args
jcheckpoint_key
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *˘	
 
 B
__inference_restore_fn_225907restored_tensors_0restored_tensors_1"Ń
ł˛Ż
FullArgSpec7
args/,
jrestored_tensors_0
jrestored_tensors_1
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *˘
	
		
ŢBŰ
__inference_save_fn_225926checkpoint_key"Ş
˛
FullArgSpec
args
jcheckpoint_key
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *˘	
 
 B
__inference_restore_fn_225934restored_tensors_0restored_tensors_1"Ń
ł˛Ż
FullArgSpec7
args/,
jrestored_tensors_0
jrestored_tensors_1
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *˘
	
		@
__inference__creator_225801!˘

˘ 
Ş "
unknown @
__inference__creator_225819!˘

˘ 
Ş "
unknown @
__inference__creator_225837!˘

˘ 
Ş "
unknown @
__inference__creator_225852!˘

˘ 
Ş "
unknown @
__inference__creator_225870!˘

˘ 
Ş "
unknown B
__inference__destroyer_225814!˘

˘ 
Ş "
unknown B
__inference__destroyer_225832!˘

˘ 
Ş "
unknown B
__inference__destroyer_225847!˘

˘ 
Ş "
unknown B
__inference__destroyer_225865!˘

˘ 
Ş "
unknown B
__inference__destroyer_225880!˘

˘ 
Ş "
unknown K
__inference__initializer_225809(#˘

˘ 
Ş "
unknown K
__inference__initializer_225827(r˘

˘ 
Ş "
unknown D
__inference__initializer_225842!˘

˘ 
Ş "
unknown K
__inference__initializer_225860(v˘

˘ 
Ş "
unknown D
__inference__initializer_225875!˘

˘ 
Ş "
unknown k
__inference_adapt_step_224184JsÚ?˘<
5˘2
0-˘
˙˙˙˙˙˙˙˙˙IteratorSpec 
Ş "
 k
__inference_adapt_step_224236Jwâ?˘<
5˘2
0-˘
˙˙˙˙˙˙˙˙˙IteratorSpec 
Ş "
 
A__inference_gru_4_layer_call_and_return_conditional_losses_224639Á'()P˘M
F˘C
52
0-
inputs_0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

 
p

 
Ş "h˘e
^[
2/

tensor_0_0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
%"

tensor_0_1˙˙˙˙˙˙˙˙˙
 
A__inference_gru_4_layer_call_and_return_conditional_losses_225016Á'()P˘M
F˘C
52
0-
inputs_0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

 
p 

 
Ş "h˘e
^[
2/

tensor_0_0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
%"

tensor_0_1˙˙˙˙˙˙˙˙˙
 Ţ
&__inference_gru_4_layer_call_fn_224249ł'()P˘M
F˘C
52
0-
inputs_0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

 
p

 
Ş "ZW
0-
tensor_0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
# 
tensor_1˙˙˙˙˙˙˙˙˙Ţ
&__inference_gru_4_layer_call_fn_224262ł'()P˘M
F˘C
52
0-
inputs_0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

 
p 

 
Ş "ZW
0-
tensor_0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
# 
tensor_1˙˙˙˙˙˙˙˙˙
A__inference_gru_5_layer_call_and_return_conditional_losses_225419Á?@AP˘M
F˘C
52
0-
inputs_0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

 
p

 
Ş "h˘e
^[
2/

tensor_0_0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
%"

tensor_0_1˙˙˙˙˙˙˙˙˙
 
A__inference_gru_5_layer_call_and_return_conditional_losses_225796Á?@AP˘M
F˘C
52
0-
inputs_0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

 
p 

 
Ş "h˘e
^[
2/

tensor_0_0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
%"

tensor_0_1˙˙˙˙˙˙˙˙˙
 Ţ
&__inference_gru_5_layer_call_fn_225029ł?@AP˘M
F˘C
52
0-
inputs_0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

 
p

 
Ş "ZW
0-
tensor_0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
# 
tensor_1˙˙˙˙˙˙˙˙˙Ţ
&__inference_gru_5_layer_call_fn_225042ł?@AP˘M
F˘C
52
0-
inputs_0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

 
p 

 
Ş "ZW
0-
tensor_0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
# 
tensor_1˙˙˙˙˙˙˙˙˙
__inference_restore_fn_225907bsK˘H
A˘>

restored_tensors_0

restored_tensors_1	
Ş "
unknown 
__inference_restore_fn_225934bwK˘H
A˘>

restored_tensors_0

restored_tensors_1	
Ş "
unknown ż
__inference_save_fn_225899 s&˘#
˘

checkpoint_key 
Ş "ňî
uŞr

name
tensor_0_name 
*

slice_spec
tensor_0_slice_spec 
$
tensor
tensor_0_tensor
uŞr

name
tensor_1_name 
*

slice_spec
tensor_1_slice_spec 
$
tensor
tensor_1_tensor	ż
__inference_save_fn_225926 w&˘#
˘

checkpoint_key 
Ş "ňî
uŞr

name
tensor_0_name 
*

slice_spec
tensor_0_slice_spec 
$
tensor
tensor_0_tensor
uŞr

name
tensor_1_name 
*

slice_spec
tensor_1_slice_spec 
$
tensor
tensor_1_tensor	ř
$__inference_signature_wrapper_222567Ďr}~&'()>?@ABCDEFG#=˘:
˘ 
3Ş0
.

input_text 

input_text˙˙˙˙˙˙˙˙˙"oŞl
F
	attention96
	attention'˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
"
text
text˙˙˙˙˙˙˙˙˙ĺ
__inference_tf_translate_222510Ár}~&'()>?@ABCDEFG#/˘,
%˘"
 

input_text˙˙˙˙˙˙˙˙˙
Ş "oŞl
F
	attention96
	attention'˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
"
text
text˙˙˙˙˙˙˙˙˙