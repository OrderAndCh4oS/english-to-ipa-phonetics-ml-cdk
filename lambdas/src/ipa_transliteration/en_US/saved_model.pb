÷,
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
"serve*2.12.02v2.12.0-rc1-12-g0db597d0d758Ů*

ConstConst*
_output_shapes
:W*
dtype0*ß
valueŐBŇWB/BËB[START]B[END]BÉŞBÉBnBtBsBÉŤBÉšBkBdBiBËBmBÉBzBÉBÉBĘBĂŚBbBpBoBaBfBĘBeBÉĄBÉBvBĹBuBhB,BwBĘBjBÎ¸BĂ°BËBlBÉžBĘ°BĚŻBĘBÉBĚŠBĘBÉ¨BĚBĚBÉBÍĄBxBĚĽBĚBÉBĚŞBÉBrBĚ BĚBËBĘˇBĘ˛BĘBĘBÉąBÉŚBĂ¸ByBĎBĚBË¤BËBĘBĘBÉ˝BÉťBÉľBÉŻBÇBÄŠBĂ¤Bq

Const_1Const*
_output_shapes
:W*
dtype0	*Đ
valueĆBĂ	W"¸                                                 	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       =       >       ?       @       A       B       C       D       E       F       G       H       I       J       K       L       M       N       O       P       Q       R       S       T       U       V       W       X       
ü
Const_2Const*
_output_shapes
:%*
dtype0	*Ŕ
valueśBł	%"¨                                                 	       
                                                                                                                                                                  !       "       #       $       %       &       
Ď
Const_3Const*
_output_shapes
:%*
dtype0*
valueB%B[START]B[END]BeBaBrBiBsBnBoBtBlBcBdBmBuBhBgBpBbBkByBfBwBvB'BzBjBxBqB-B.BÄBĂĄBĂźBĂşBĂŤB&

Const_4Const*
_output_shapes
:W*
dtype0*ß
valueŐBŇWB/BËB[START]B[END]BÉŞBÉBnBtBsBÉŤBÉšBkBdBiBËBmBÉBzBÉBÉBĘBĂŚBbBpBoBaBfBĘBeBÉĄBÉBvBĹBuBhB,BwBĘBjBÎ¸BĂ°BËBlBÉžBĘ°BĚŻBĘBÉBĚŠBĘBÉ¨BĚBĚBÉBÍĄBxBĚĽBĚBÉBĚŞBÉBrBĚ BĚBËBĘˇBĘ˛BĘBĘBÉąBÉŚBĂ¸ByBĎBĚBË¤BËBĘBĘBÉ˝BÉťBÉľBÉŻBÇBÄŠBĂ¤Bq

Const_5Const*
_output_shapes
:W*
dtype0	*Đ
valueĆBĂ	W"¸                                                 	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       =       >       ?       @       A       B       C       D       E       F       G       H       I       J       K       L       M       N       O       P       Q       R       S       T       U       V       W       X       
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
value	B	 R
J
Const_15Const*
_output_shapes
: *
dtype0	*
value	B	 R

MutableHashTableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_nametable_987948*
value_dtype0	
n

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name995976*
value_dtype0	

MutableHashTable_1MutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_nametable_979902*
value_dtype0	
p
hash_table_1HashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name987930*
value_dtype0	

while/decoder_11/dense_55/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:Y*/
shared_name while/decoder_11/dense_55/bias

2while/decoder_11/dense_55/bias/Read/ReadVariableOpReadVariableOpwhile/decoder_11/dense_55/bias*
_output_shapes
:Y*
dtype0

 while/decoder_11/dense_55/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Y*1
shared_name" while/decoder_11/dense_55/kernel

4while/decoder_11/dense_55/kernel/Read/ReadVariableOpReadVariableOp while/decoder_11/dense_55/kernel*
_output_shapes
:	Y*
dtype0

 while/decoder_11/dense_54/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*1
shared_name" while/decoder_11/dense_54/kernel

4while/decoder_11/dense_54/kernel/Read/ReadVariableOpReadVariableOp while/decoder_11/dense_54/kernel* 
_output_shapes
:
*
dtype0
Ý
Bwhile/decoder_11/bahdanau_attention_15/additive_attention_15/scaleVarHandleOp*
_output_shapes
: *
dtype0*
shape:*S
shared_nameDBwhile/decoder_11/bahdanau_attention_15/additive_attention_15/scale
Ö
Vwhile/decoder_11/bahdanau_attention_15/additive_attention_15/scale/Read/ReadVariableOpReadVariableOpBwhile/decoder_11/bahdanau_attention_15/additive_attention_15/scale*
_output_shapes	
:*
dtype0
Ę
6while/decoder_11/bahdanau_attention_15/dense_53/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*G
shared_name86while/decoder_11/bahdanau_attention_15/dense_53/kernel
Ă
Jwhile/decoder_11/bahdanau_attention_15/dense_53/kernel/Read/ReadVariableOpReadVariableOp6while/decoder_11/bahdanau_attention_15/dense_53/kernel* 
_output_shapes
:
*
dtype0
Ę
6while/decoder_11/bahdanau_attention_15/dense_52/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*G
shared_name86while/decoder_11/bahdanau_attention_15/dense_52/kernel
Ă
Jwhile/decoder_11/bahdanau_attention_15/dense_52/kernel/Read/ReadVariableOpReadVariableOp6while/decoder_11/bahdanau_attention_15/dense_52/kernel* 
_output_shapes
:
*
dtype0
­
(while/decoder_11/gru_23/gru_cell_23/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*9
shared_name*(while/decoder_11/gru_23/gru_cell_23/bias
Ś
<while/decoder_11/gru_23/gru_cell_23/bias/Read/ReadVariableOpReadVariableOp(while/decoder_11/gru_23/gru_cell_23/bias*
_output_shapes
:	*
dtype0
Ć
4while/decoder_11/gru_23/gru_cell_23/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*E
shared_name64while/decoder_11/gru_23/gru_cell_23/recurrent_kernel
ż
Hwhile/decoder_11/gru_23/gru_cell_23/recurrent_kernel/Read/ReadVariableOpReadVariableOp4while/decoder_11/gru_23/gru_cell_23/recurrent_kernel* 
_output_shapes
:
*
dtype0
˛
*while/decoder_11/gru_23/gru_cell_23/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*;
shared_name,*while/decoder_11/gru_23/gru_cell_23/kernel
Ť
>while/decoder_11/gru_23/gru_cell_23/kernel/Read/ReadVariableOpReadVariableOp*while/decoder_11/gru_23/gru_cell_23/kernel* 
_output_shapes
:
*
dtype0
­
(while/decoder_11/embedding_23/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Y*9
shared_name*(while/decoder_11/embedding_23/embeddings
Ś
<while/decoder_11/embedding_23/embeddings/Read/ReadVariableOpReadVariableOp(while/decoder_11/embedding_23/embeddings*
_output_shapes
:	Y*
dtype0
Ą
"encoder_11/gru_22/gru_cell_22/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*3
shared_name$"encoder_11/gru_22/gru_cell_22/bias

6encoder_11/gru_22/gru_cell_22/bias/Read/ReadVariableOpReadVariableOp"encoder_11/gru_22/gru_cell_22/bias*
_output_shapes
:	*
dtype0
ş
.encoder_11/gru_22/gru_cell_22/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*?
shared_name0.encoder_11/gru_22/gru_cell_22/recurrent_kernel
ł
Bencoder_11/gru_22/gru_cell_22/recurrent_kernel/Read/ReadVariableOpReadVariableOp.encoder_11/gru_22/gru_cell_22/recurrent_kernel* 
_output_shapes
:
*
dtype0
Ś
$encoder_11/gru_22/gru_cell_22/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*5
shared_name&$encoder_11/gru_22/gru_cell_22/kernel

8encoder_11/gru_22/gru_cell_22/kernel/Read/ReadVariableOpReadVariableOp$encoder_11/gru_22/gru_cell_22/kernel* 
_output_shapes
:
*
dtype0
Ą
"encoder_11/embedding_22/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	'*3
shared_name$"encoder_11/embedding_22/embeddings

6encoder_11/embedding_22/embeddings/Read/ReadVariableOpReadVariableOp"encoder_11/embedding_22/embeddings*
_output_shapes
:	'*
dtype0
q
hash_table_2HashTableV2*
_output_shapes
: *
	key_dtype0	*
shared_name	1242770*
value_dtype0
u
serving_default_input_textPlaceholder*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0*
shape:˙˙˙˙˙˙˙˙˙
Ű
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_texthash_table_1Const_10Const_9Const_8"encoder_11/embedding_22/embeddings$encoder_11/gru_22/gru_cell_22/kernel.encoder_11/gru_22/gru_cell_22/recurrent_kernel"encoder_11/gru_22/gru_cell_22/biasConst_15(while/decoder_11/embedding_23/embeddings*while/decoder_11/gru_23/gru_cell_23/kernel4while/decoder_11/gru_23/gru_cell_23/recurrent_kernel(while/decoder_11/gru_23/gru_cell_23/bias6while/decoder_11/bahdanau_attention_15/dense_52/kernel6while/decoder_11/bahdanau_attention_15/dense_53/kernelBwhile/decoder_11/bahdanau_attention_15/additive_attention_15/scale while/decoder_11/dense_54/kernel while/decoder_11/dense_55/kernelwhile/decoder_11/dense_55/biasConst_14hash_table_2Const_13Const_12Const_11*$
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
GPU2*0J 8 *.
f)R'
%__inference_signature_wrapper_1289680
Ń
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
GPU2*0J 8 *)
f$R"
 __inference__initializer_1292921
Ń
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
GPU2*0J 8 *)
f$R"
 __inference__initializer_1292939

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
GPU2*0J 8 *)
f$R"
 __inference__initializer_1292954
Í
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
GPU2*0J 8 *)
f$R"
 __inference__initializer_1292972

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
GPU2*0J 8 *)
f$R"
 __inference__initializer_1292987
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
ÝZ
Const_16Const"/device:CPU:0*
_output_shapes
: *
dtype0*Z
valueZBZ BZ
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
jd
VARIABLE_VALUE"encoder_11/embedding_22/embeddings.encoder/variables/0/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE$encoder_11/gru_22/gru_cell_22/kernel.encoder/variables/1/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE.encoder_11/gru_22/gru_cell_22/recurrent_kernel.encoder/variables/2/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUE"encoder_11/gru_22/gru_cell_22/bias.encoder/variables/3/.ATTRIBUTES/VARIABLE_VALUE*
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
pj
VARIABLE_VALUE(while/decoder_11/embedding_23/embeddings.decoder/variables/0/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUE*while/decoder_11/gru_23/gru_cell_23/kernel.decoder/variables/1/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE4while/decoder_11/gru_23/gru_cell_23/recurrent_kernel.decoder/variables/2/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUE(while/decoder_11/gru_23/gru_cell_23/bias.decoder/variables/3/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE6while/decoder_11/bahdanau_attention_15/dense_52/kernel.decoder/variables/4/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE6while/decoder_11/bahdanau_attention_15/dense_53/kernel.decoder/variables/5/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEBwhile/decoder_11/bahdanau_attention_15/additive_attention_15/scale.decoder/variables/6/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUE while/decoder_11/dense_54/kernel.decoder/variables/7/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUE while/decoder_11/dense_55/kernel.decoder/variables/8/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEwhile/decoder_11/dense_55/bias.decoder/variables/9/.ATTRIBUTES/VARIABLE_VALUE*
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
Ź	
StatefulPartitionedCall_4StatefulPartitionedCallsaver_filename"encoder_11/embedding_22/embeddings$encoder_11/gru_22/gru_cell_22/kernel.encoder_11/gru_22/gru_cell_22/recurrent_kernel"encoder_11/gru_22/gru_cell_22/bias(while/decoder_11/embedding_23/embeddings*while/decoder_11/gru_23/gru_cell_23/kernel4while/decoder_11/gru_23/gru_cell_23/recurrent_kernel(while/decoder_11/gru_23/gru_cell_23/bias6while/decoder_11/bahdanau_attention_15/dense_52/kernel6while/decoder_11/bahdanau_attention_15/dense_53/kernelBwhile/decoder_11/bahdanau_attention_15/additive_attention_15/scale while/decoder_11/dense_54/kernel while/decoder_11/dense_55/kernelwhile/decoder_11/dense_55/biasAMutableHashTable_1_lookup_table_export_values/LookupTableExportV2CMutableHashTable_1_lookup_table_export_values/LookupTableExportV2:1?MutableHashTable_lookup_table_export_values/LookupTableExportV2AMutableHashTable_lookup_table_export_values/LookupTableExportV2:1Const_16*
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
GPU2*0J 8 *)
f$R"
 __inference__traced_save_1293188
ź
StatefulPartitionedCall_5StatefulPartitionedCallsaver_filename"encoder_11/embedding_22/embeddings$encoder_11/gru_22/gru_cell_22/kernel.encoder_11/gru_22/gru_cell_22/recurrent_kernel"encoder_11/gru_22/gru_cell_22/bias(while/decoder_11/embedding_23/embeddings*while/decoder_11/gru_23/gru_cell_23/kernel4while/decoder_11/gru_23/gru_cell_23/recurrent_kernel(while/decoder_11/gru_23/gru_cell_23/bias6while/decoder_11/bahdanau_attention_15/dense_52/kernel6while/decoder_11/bahdanau_attention_15/dense_53/kernelBwhile/decoder_11/bahdanau_attention_15/additive_attention_15/scale while/decoder_11/dense_54/kernel while/decoder_11/dense_55/kernelwhile/decoder_11/dense_55/biasMutableHashTable_1MutableHashTable*
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
GPU2*0J 8 *,
f'R%
#__inference__traced_restore_1293246ŤĐ(
Č-
ă
while_body_1291823
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
ł
š
while_cond_1288880
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
while_less_range_limit5
1while_while_cond_1288880___redundant_placeholder0	5
1while_while_cond_1288880___redundant_placeholder15
1while_while_cond_1288880___redundant_placeholder25
1while_while_cond_1288880___redundant_placeholder35
1while_while_cond_1288880___redundant_placeholder45
1while_while_cond_1288880___redundant_placeholder55
1while_while_cond_1288880___redundant_placeholder65
1while_while_cond_1288880___redundant_placeholder75
1while_while_cond_1288880___redundant_placeholder85
1while_while_cond_1288880___redundant_placeholder96
2while_while_cond_1288880___redundant_placeholder106
2while_while_cond_1288880___redundant_placeholder116
2while_while_cond_1288880___redundant_placeholder12	6
2while_while_cond_1288880___redundant_placeholder13
while_identity
^

while/LessLesswhile_placeholderwhile_less_range_limit*
T0*
_output_shapes
: ł

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
 *+
else_branchR
while_cond_false_1288897*
output_shapes
: **
then_branchR
while_cond_true_1288896U
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
ť?
˝
'__forward_gpu_gru_with_fallback_1291213

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
api_implements*(gru_b8ffb741-c512-4436-b035-e42fa3ecf652*
api_preferred_deviceGPU*X
backward_function_name><__inference___backward_gpu_gru_with_fallback_1291078_1291214*
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
Ę
á
,while_TensorArrayV2Write_1_cond_true_12895089
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
Č-
ă
while_body_1288988
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
ú	
ä
while_cond_1288987
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice5
1while_while_cond_1288987___redundant_placeholder05
1while_while_cond_1288987___redundant_placeholder15
1while_while_cond_1288987___redundant_placeholder25
1while_while_cond_1288987___redundant_placeholder35
1while_while_cond_1288987___redundant_placeholder4
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

.
__inference__destroyer_1292959
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

.
__inference__destroyer_1292944
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
ť?
˝
'__forward_gpu_gru_with_fallback_1288850

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
api_implements*(gru_bc725f04-f042-4573-aecd-809e3e01dcb0*
api_preferred_deviceGPU*X
backward_function_name><__inference___backward_gpu_gru_with_fallback_1288715_1288851*
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


 __inference__initializer_12929399
5key_value_init987929_lookuptableimportv2_table_handle1
-key_value_init987929_lookuptableimportv2_keys3
/key_value_init987929_lookuptableimportv2_values	
identity˘(key_value_init987929/LookupTableImportV2
(key_value_init987929/LookupTableImportV2LookupTableImportV25key_value_init987929_lookuptableimportv2_table_handle-key_value_init987929_lookuptableimportv2_keys/key_value_init987929_lookuptableimportv2_values*	
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
: q
NoOpNoOp)^key_value_init987929/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: :%:%2T
(key_value_init987929/LookupTableImportV2(key_value_init987929/LookupTableImportV2: 

_output_shapes
:%: 

_output_shapes
:%
Ó
Ő
C__inference_gru_22_layer_call_and_return_conditional_losses_1291751
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
:	
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
GPU2*0J 8 *)
f$R"
 __inference_standard_gru_1291535w

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
ň	
Í
(__inference_gru_22_layer_call_fn_1291374
inputs_0
unknown:

	unknown_0:

	unknown_1:	
identity

identity_1˘StatefulPartitionedCall
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
GPU2*0J 8 *L
fGRE
C__inference_gru_22_layer_call_and_return_conditional_losses_1290435}
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
ľ
`
while_cond_false_1289527+
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
Č-
ă
while_body_1292603
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
ť?
˝
'__forward_gpu_gru_with_fallback_1290431

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
api_implements*(gru_2eabfbb4-538b-4586-b1e5-fea839885392*
api_preferred_deviceGPU*X
backward_function_name><__inference___backward_gpu_gru_with_fallback_1290296_1290432*
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
Ë
Ó
C__inference_gru_23_layer_call_and_return_conditional_losses_1291217

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
:	
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
GPU2*0J 8 *)
f$R"
 __inference_standard_gru_1291001w

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
ť
Ś
__inference_save_fn_1293038
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
ż
č

<__inference___backward_gpu_gru_with_fallback_1291612_1291748
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
api_implements*(gru_f26c406d-401e-4577-bd5d-2024d30b9db7*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_gru_with_fallback_1291747*
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
Ę5
°
)__inference_gpu_gru_with_fallback_1292768

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
api_implements*(gru_7ebff0c3-f658-4c67-9e36-9a538dc84c29*
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
>
¤
 __inference_standard_gru_1289842

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
value	B : ź
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
bodyR
while_body_1289753*
condR
while_cond_1289752*Y
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
api_implements*(gru_e5206ce8-28f6-4669-b6b8-37e48983ffe4*
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
Č-
ă
while_body_1290130
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
?
˝
'__forward_gpu_gru_with_fallback_1289289

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
api_implements*(gru_40a46304-ac65-4e04-9f6b-9242ed7289d2*
api_preferred_deviceGPU*X
backward_function_name><__inference___backward_gpu_gru_with_fallback_1289154_1289290*
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
ť?
˝
'__forward_gpu_gru_with_fallback_1290054

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
api_implements*(gru_e5206ce8-28f6-4669-b6b8-37e48983ffe4*
api_preferred_deviceGPU*X
backward_function_name><__inference___backward_gpu_gru_with_fallback_1289919_1290055*
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
ť?
˝
'__forward_gpu_gru_with_fallback_1292124

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
api_implements*(gru_1f0fe79e-5ce3-4d54-80da-2e1582d649c3*
api_preferred_deviceGPU*X
backward_function_name><__inference___backward_gpu_gru_with_fallback_1291989_1292125*
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
ť
Ś
__inference_save_fn_1293011
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
ż
č

<__inference___backward_gpu_gru_with_fallback_1290296_1290432
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
api_implements*(gru_2eabfbb4-538b-4586-b1e5-fea839885392*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_gru_with_fallback_1290431*
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
Ó
Ő
C__inference_gru_22_layer_call_and_return_conditional_losses_1292128
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
:	
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
GPU2*0J 8 *)
f$R"
 __inference_standard_gru_1291912w

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
Ë
Ó
C__inference_gru_22_layer_call_and_return_conditional_losses_1290435

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
:	
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
GPU2*0J 8 *)
f$R"
 __inference_standard_gru_1290219w

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
ú	
ä
while_cond_1291822
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice5
1while_while_cond_1291822___redundant_placeholder05
1while_while_cond_1291822___redundant_placeholder15
1while_while_cond_1291822___redundant_placeholder25
1while_while_cond_1291822___redundant_placeholder35
1while_while_cond_1291822___redundant_placeholder4
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
Ě
ľ
%__inference_signature_wrapper_1289680

input_text
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:	'
	unknown_4:

	unknown_5:

	unknown_6:	
	unknown_7	
	unknown_8:	Y
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

unknown_16:	Y

unknown_17:Y

unknown_18	

unknown_19

unknown_20

unknown_21	

unknown_22
identity

identity_1˘StatefulPartitionedCall
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
GPU2*0J 8 *)
f$R"
 __inference_tf_translate_1289623
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
Ę5
°
)__inference_gpu_gru_with_fallback_1291611

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
api_implements*(gru_f26c406d-401e-4577-bd5d-2024d30b9db7*
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
Ó
Ő
C__inference_gru_23_layer_call_and_return_conditional_losses_1292908
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
:	
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
GPU2*0J 8 *)
f$R"
 __inference_standard_gru_1292692w

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
Č-
ă
while_body_1289753
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
ň	
Í
(__inference_gru_22_layer_call_fn_1291361
inputs_0
unknown:

	unknown_0:

	unknown_1:	
identity

identity_1˘StatefulPartitionedCall
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
GPU2*0J 8 *L
fGRE
C__inference_gru_22_layer_call_and_return_conditional_losses_1290058}
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
Č-
ă
while_body_1291446
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
ť?
˝
'__forward_gpu_gru_with_fallback_1290836

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
api_implements*(gru_57a2e957-e395-4811-aa4e-4ba43bbab3ae*
api_preferred_deviceGPU*X
backward_function_name><__inference___backward_gpu_gru_with_fallback_1290701_1290837*
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

H
__inference__creator_1292982
identity: ˘MutableHashTable
MutableHashTableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_nametable_987948*
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
Ę5
°
)__inference_gpu_gru_with_fallback_1292391

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
api_implements*(gru_c6b1b783-8c03-4bf7-8f71-7a016ecb2847*
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
>
¤
 __inference_standard_gru_1288638

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
value	B : ź
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
bodyR
while_body_1288549*
condR
while_cond_1288548*Y
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
api_implements*(gru_bc725f04-f042-4573-aecd-809e3e01dcb0*
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
Ę
č

<__inference___backward_gpu_gru_with_fallback_1289154_1289290
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
api_implements*(gru_40a46304-ac65-4e04-9f6b-9242ed7289d2*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_gru_with_fallback_1289289*
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
>
¤
 __inference_standard_gru_1292692

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
value	B : ź
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
bodyR
while_body_1292603*
condR
while_cond_1292602*Y
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
api_implements*(gru_7ebff0c3-f658-4c67-9e36-9a538dc84c29*
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
ú	
ä
while_cond_1290911
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice5
1while_while_cond_1290911___redundant_placeholder05
1while_while_cond_1290911___redundant_placeholder15
1while_while_cond_1290911___redundant_placeholder25
1while_while_cond_1290911___redundant_placeholder35
1while_while_cond_1290911___redundant_placeholder4
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
Ë
Ó
C__inference_gru_22_layer_call_and_return_conditional_losses_1290058

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
:	
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
GPU2*0J 8 *)
f$R"
 __inference_standard_gru_1289842w

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
ż
č

<__inference___backward_gpu_gru_with_fallback_1289919_1290055
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
api_implements*(gru_e5206ce8-28f6-4669-b6b8-37e48983ffe4*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_gru_with_fallback_1290054*
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
Ę5
°
)__inference_gpu_gru_with_fallback_1290700

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
api_implements*(gru_57a2e957-e395-4811-aa4e-4ba43bbab3ae*
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

H
__inference__creator_1292949
identity: ˘MutableHashTable
MutableHashTableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_nametable_979902*
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
ż
č

<__inference___backward_gpu_gru_with_fallback_1290701_1290837
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
api_implements*(gru_57a2e957-e395-4811-aa4e-4ba43bbab3ae*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_gru_with_fallback_1290836*
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
>
¤
 __inference_standard_gru_1290219

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
value	B : ź
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
bodyR
while_body_1290130*
condR
while_cond_1290129*Y
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
api_implements*(gru_2eabfbb4-538b-4586-b1e5-fea839885392*
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
ú	
ä
while_cond_1288548
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice5
1while_while_cond_1288548___redundant_placeholder05
1while_while_cond_1288548___redundant_placeholder15
1while_while_cond_1288548___redundant_placeholder25
1while_while_cond_1288548___redundant_placeholder35
1while_while_cond_1288548___redundant_placeholder4
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
Ź
Ů
*while_TensorArrayV2Write_cond_true_12894237
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
ú	
ä
while_cond_1289752
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice5
1while_while_cond_1289752___redundant_placeholder05
1while_while_cond_1289752___redundant_placeholder15
1while_while_cond_1289752___redundant_placeholder25
1while_while_cond_1289752___redundant_placeholder35
1while_while_cond_1289752___redundant_placeholder4
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
5
°
)__inference_gpu_gru_with_fallback_1289153

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
api_implements*(gru_40a46304-ac65-4e04-9f6b-9242ed7289d2*
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
Ň
<
__inference__creator_1292931
identity˘
hash_tablen

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name987930*
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

.
__inference__destroyer_1292977
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
äG

__inference_adapt_step_1291296
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
Č-
ă
while_body_1288549
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
Ę5
°
)__inference_gpu_gru_with_fallback_1291988

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
api_implements*(gru_1f0fe79e-5ce3-4d54-80da-2e1582d649c3*
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
äG

__inference_adapt_step_1291348
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
Č-
ă
while_body_1292226
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

.
__inference__destroyer_1292926
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
ż
č

<__inference___backward_gpu_gru_with_fallback_1288715_1288851
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
api_implements*(gru_bc725f04-f042-4573-aecd-809e3e01dcb0*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_gru_with_fallback_1288850*
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
Ë
Ó
C__inference_gru_23_layer_call_and_return_conditional_losses_1290840

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
:	
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
GPU2*0J 8 *)
f$R"
 __inference_standard_gru_1290624w

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
>
¤
 __inference_standard_gru_1290624

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
value	B : ź
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
bodyR
while_body_1290535*
condR
while_cond_1290534*Y
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
api_implements*(gru_57a2e957-e395-4811-aa4e-4ba43bbab3ae*
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
śÁ
ă
 __inference_tf_translate_1289623

input_textT
Ptext_vectorization_6_string_lookup_34_none_lookup_lookuptablefindv2_table_handleU
Qtext_vectorization_6_string_lookup_34_none_lookup_lookuptablefindv2_default_value	1
-text_vectorization_6_string_lookup_34_equal_y4
0text_vectorization_6_string_lookup_34_selectv2_t	C
0encoder_11_embedding_22_embedding_lookup_1288475:	'B
.encoder_11_gru_22_read_readvariableop_resource:
D
0encoder_11_gru_22_read_1_readvariableop_resource:
C
0encoder_11_gru_22_read_2_readvariableop_resource:	

fill_value	!
while_input_11:	Y"
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
while_input_20:	Y
while_input_21:Y
while_input_22	?
;string_lookup_36_none_lookup_lookuptablefindv2_table_handle@
<string_lookup_36_none_lookup_lookuptablefindv2_default_value
string_lookup_36_equal_y	
string_lookup_36_selectv2_t
identity

identity_1˘(encoder_11/embedding_22/embedding_lookup˘%encoder_11/gru_22/Read/ReadVariableOp˘'encoder_11/gru_22/Read_1/ReadVariableOp˘'encoder_11/gru_22/Read_2/ReadVariableOp˘.string_lookup_36/None_Lookup/LookupTableFindV2˘Ctext_vectorization_6/string_lookup_34/None_Lookup/LookupTableFindV2˘whileM
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
shrink_axis_mask`
 text_vectorization_6/StringStripStringStrip
input_text*#
_output_shapes
:˙˙˙˙˙˙˙˙˙p
(text_vectorization_6/StringJoin/inputs_0Const*
_output_shapes
: *
dtype0*
valueB B[START]n
(text_vectorization_6/StringJoin/inputs_2Const*
_output_shapes
: *
dtype0*
valueB B[END]ţ
text_vectorization_6/StringJoin
StringJoin1text_vectorization_6/StringJoin/inputs_0:output:0)text_vectorization_6/StringStrip:output:01text_vectorization_6/StringJoin/inputs_2:output:0*
N*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	separator g
&text_vectorization_6/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B Ř
.text_vectorization_6/StringSplit/StringSplitV2StringSplitV2(text_vectorization_6/StringJoin:output:0/text_vectorization_6/StringSplit/Const:output:0*<
_output_shapes*
(:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:
4text_vectorization_6/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
6text_vectorization_6/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
6text_vectorization_6/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ž
.text_vectorization_6/StringSplit/strided_sliceStridedSlice8text_vectorization_6/StringSplit/StringSplitV2:indices:0=text_vectorization_6/StringSplit/strided_slice/stack:output:0?text_vectorization_6/StringSplit/strided_slice/stack_1:output:0?text_vectorization_6/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

begin_mask*
end_mask*
shrink_axis_mask
6text_vectorization_6/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
8text_vectorization_6/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
8text_vectorization_6/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
0text_vectorization_6/StringSplit/strided_slice_1StridedSlice6text_vectorization_6/StringSplit/StringSplitV2:shape:0?text_vectorization_6/StringSplit/strided_slice_1/stack:output:0Atext_vectorization_6/StringSplit/strided_slice_1/stack_1:output:0Atext_vectorization_6/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_maskŐ
Wtext_vectorization_6/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast7text_vectorization_6/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙Ě
Ytext_vectorization_6/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast9text_vectorization_6/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ú
atext_vectorization_6/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShape[text_vectorization_6/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
::íĎŤ
atext_vectorization_6/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: á
`text_vectorization_6/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdjtext_vectorization_6/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0jtext_vectorization_6/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: §
etext_vectorization_6/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ę
ctext_vectorization_6/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreateritext_vectorization_6/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ntext_vectorization_6/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: 
`text_vectorization_6/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastgtext_vectorization_6/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ­
ctext_vectorization_6/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: Ň
_text_vectorization_6/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMax[text_vectorization_6/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0ltext_vectorization_6/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: Ł
atext_vectorization_6/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :ß
_text_vectorization_6/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2htext_vectorization_6/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0jtext_vectorization_6/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: Ň
_text_vectorization_6/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMuldtext_vectorization_6/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0ctext_vectorization_6/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: Ó
ctext_vectorization_6/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum]text_vectorization_6/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0ctext_vectorization_6/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ×
ctext_vectorization_6/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum]text_vectorization_6/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0gtext_vectorization_6/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: Ś
ctext_vectorization_6/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ź
itext_vectorization_6/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙í
ctext_vectorization_6/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ReshapeReshape[text_vectorization_6/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0rtext_vectorization_6/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shape:output:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙ă
dtext_vectorization_6/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountltext_vectorization_6/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape:output:0gtext_vectorization_6/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0ltext_vectorization_6/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
^text_vectorization_6/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ç
Ytext_vectorization_6/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumktext_vectorization_6/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0gtext_vectorization_6/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙Ź
btext_vectorization_6/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R  
^text_vectorization_6/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ó
Ytext_vectorization_6/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2ktext_vectorization_6/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0_text_vectorization_6/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0gtext_vectorization_6/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙ň
Ctext_vectorization_6/string_lookup_34/None_Lookup/LookupTableFindV2LookupTableFindV2Ptext_vectorization_6_string_lookup_34_none_lookup_lookuptablefindv2_table_handle7text_vectorization_6/StringSplit/StringSplitV2:values:0Qtext_vectorization_6_string_lookup_34_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙Ę
+text_vectorization_6/string_lookup_34/EqualEqual7text_vectorization_6/StringSplit/StringSplitV2:values:0-text_vectorization_6_string_lookup_34_equal_y*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
.text_vectorization_6/string_lookup_34/SelectV2SelectV2/text_vectorization_6/string_lookup_34/Equal:z:00text_vectorization_6_string_lookup_34_selectv2_tLtext_vectorization_6/string_lookup_34/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙Ą
.text_vectorization_6/string_lookup_34/IdentityIdentity7text_vectorization_6/string_lookup_34/SelectV2:output:0*
T0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙s
1text_vectorization_6/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 
)text_vectorization_6/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
8text_vectorization_6/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor2text_vectorization_6/RaggedToTensor/Const:output:07text_vectorization_6/string_lookup_34/Identity:output:0:text_vectorization_6/RaggedToTensor/default_value:output:09text_vectorization_6/StringSplit/strided_slice_1:output:07text_vectorization_6/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDSČ
(encoder_11/embedding_22/embedding_lookupResourceGather0encoder_11_embedding_22_embedding_lookup_1288475Atext_vectorization_6/RaggedToTensor/RaggedTensorToTensor:result:0*
Tindices0	*C
_class9
75loc:@encoder_11/embedding_22/embedding_lookup/1288475*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
dtype0ő
1encoder_11/embedding_22/embedding_lookup/IdentityIdentity1encoder_11/embedding_22/embedding_lookup:output:0*
T0*C
_class9
75loc:@encoder_11/embedding_22/embedding_lookup/1288475*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙ť
3encoder_11/embedding_22/embedding_lookup/Identity_1Identity:encoder_11/embedding_22/embedding_lookup/Identity:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
encoder_11/gru_22/ShapeShape<encoder_11/embedding_22/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
::íĎo
%encoder_11/gru_22/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'encoder_11/gru_22/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'encoder_11/gru_22/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ť
encoder_11/gru_22/strided_sliceStridedSlice encoder_11/gru_22/Shape:output:0.encoder_11/gru_22/strided_slice/stack:output:00encoder_11/gru_22/strided_slice/stack_1:output:00encoder_11/gru_22/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskc
 encoder_11/gru_22/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Š
encoder_11/gru_22/zeros/packedPack(encoder_11/gru_22/strided_slice:output:0)encoder_11/gru_22/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:b
encoder_11/gru_22/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ł
encoder_11/gru_22/zerosFill'encoder_11/gru_22/zeros/packed:output:0&encoder_11/gru_22/zeros/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
%encoder_11/gru_22/Read/ReadVariableOpReadVariableOp.encoder_11_gru_22_read_readvariableop_resource* 
_output_shapes
:
*
dtype0
encoder_11/gru_22/IdentityIdentity-encoder_11/gru_22/Read/ReadVariableOp:value:0*
T0* 
_output_shapes
:

'encoder_11/gru_22/Read_1/ReadVariableOpReadVariableOp0encoder_11_gru_22_read_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
encoder_11/gru_22/Identity_1Identity/encoder_11/gru_22/Read_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:

'encoder_11/gru_22/Read_2/ReadVariableOpReadVariableOp0encoder_11_gru_22_read_2_readvariableop_resource*
_output_shapes
:	*
dtype0
encoder_11/gru_22/Identity_2Identity/encoder_11/gru_22/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	Ş
!encoder_11/gru_22/PartitionedCallPartitionedCall<encoder_11/embedding_22/embedding_lookup/Identity_1:output:0 encoder_11/gru_22/zeros:output:0#encoder_11/gru_22/Identity:output:0%encoder_11/gru_22/Identity_1:output:0%encoder_11/gru_22/Identity_2:output:0*
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
GPU2*0J 8 *)
f$R"
 __inference_standard_gru_1288638M
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
value	B : 	
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0range/start:output:0TensorArrayV2_1:handle:0TensorArrayV2:handle:0Const:output:0*encoder_11/gru_22/PartitionedCall:output:2zeros:output:0Fill:output:0range/limit:output:0Atext_vectorization_6/RaggedToTensor/RaggedTensorToTensor:result:0while_input_11while_input_12while_input_13while_input_14while_input_15while_input_16*encoder_11/gru_22/PartitionedCall:output:1while_input_18while_input_19while_input_20while_input_21while_input_22range/delta:output:0*!
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
bodyR
while_body_1288881*
condR
while_cond_1288880*˛
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
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
.string_lookup_36/None_Lookup/LookupTableFindV2LookupTableFindV2;string_lookup_36_none_lookup_lookuptablefindv2_table_handletranspose:y:0<string_lookup_36_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
string_lookup_36/EqualEqualtranspose:y:0string_lookup_36_equal_y*
T0	*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙Ň
string_lookup_36/SelectV2SelectV2string_lookup_36/Equal:z:0string_lookup_36_selectv2_t7string_lookup_36/None_Lookup/LookupTableFindV2:values:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙i
'ReduceJoin/ReduceJoin/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :°
ReduceJoin/ReduceJoin
ReduceJoin"string_lookup_36/SelectV2:output:00ReduceJoin/ReduceJoin/reduction_indices:output:0*#
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
:˙˙˙˙˙˙˙˙˙ě
NoOpNoOp)^encoder_11/embedding_22/embedding_lookup&^encoder_11/gru_22/Read/ReadVariableOp(^encoder_11/gru_22/Read_1/ReadVariableOp(^encoder_11/gru_22/Read_2/ReadVariableOp/^string_lookup_36/None_Lookup/LookupTableFindV2D^text_vectorization_6/string_lookup_34/None_Lookup/LookupTableFindV2^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : : : : : : : : : : : : : : 2T
(encoder_11/embedding_22/embedding_lookup(encoder_11/embedding_22/embedding_lookup2N
%encoder_11/gru_22/Read/ReadVariableOp%encoder_11/gru_22/Read/ReadVariableOp2R
'encoder_11/gru_22/Read_1/ReadVariableOp'encoder_11/gru_22/Read_1/ReadVariableOp2R
'encoder_11/gru_22/Read_2/ReadVariableOp'encoder_11/gru_22/Read_2/ReadVariableOp2`
.string_lookup_36/None_Lookup/LookupTableFindV2.string_lookup_36/None_Lookup/LookupTableFindV22
Ctext_vectorization_6/string_lookup_34/None_Lookup/LookupTableFindV2Ctext_vectorization_6/string_lookup_34/None_Lookup/LookupTableFindV22
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
Ę5
°
)__inference_gpu_gru_with_fallback_1291077

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
api_implements*(gru_b8ffb741-c512-4436-b035-e42fa3ecf652*
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
ú	
ä
while_cond_1290534
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice5
1while_while_cond_1290534___redundant_placeholder05
1while_while_cond_1290534___redundant_placeholder15
1while_while_cond_1290534___redundant_placeholder25
1while_while_cond_1290534___redundant_placeholder35
1while_while_cond_1290534___redundant_placeholder4
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
ň	
Í
(__inference_gru_23_layer_call_fn_1292141
inputs_0
unknown:

	unknown_0:

	unknown_1:	
identity

identity_1˘StatefulPartitionedCall
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
GPU2*0J 8 *L
fGRE
C__inference_gru_23_layer_call_and_return_conditional_losses_1290840}
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
ť?
˝
'__forward_gpu_gru_with_fallback_1292527

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
api_implements*(gru_c6b1b783-8c03-4bf7-8f71-7a016ecb2847*
api_preferred_deviceGPU*X
backward_function_name><__inference___backward_gpu_gru_with_fallback_1292392_1292528*
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
while_cond_true_1289526
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
Ľ

 __inference__initializer_1292921:
6key_value_init1242769_lookuptableimportv2_table_handle2
.key_value_init1242769_lookuptableimportv2_keys	4
0key_value_init1242769_lookuptableimportv2_values
identity˘)key_value_init1242769/LookupTableImportV2
)key_value_init1242769/LookupTableImportV2LookupTableImportV26key_value_init1242769_lookuptableimportv2_table_handle.key_value_init1242769_lookuptableimportv2_keys0key_value_init1242769_lookuptableimportv2_values*	
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
: r
NoOpNoOp*^key_value_init1242769/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: :W:W2V
)key_value_init1242769/LookupTableImportV2)key_value_init1242769/LookupTableImportV2: 

_output_shapes
:W: 

_output_shapes
:W
Ę5
°
)__inference_gpu_gru_with_fallback_1288714

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
api_implements*(gru_bc725f04-f042-4573-aecd-809e3e01dcb0*
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
đ
Ű
__inference_restore_fn_1293019
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
ß
Ë
 __inference__traced_save_1293188
file_prefixL
9read_disablecopyonread_encoder_11_embedding_22_embeddings:	'Q
=read_1_disablecopyonread_encoder_11_gru_22_gru_cell_22_kernel:
[
Gread_2_disablecopyonread_encoder_11_gru_22_gru_cell_22_recurrent_kernel:
N
;read_3_disablecopyonread_encoder_11_gru_22_gru_cell_22_bias:	T
Aread_4_disablecopyonread_while_decoder_11_embedding_23_embeddings:	YW
Cread_5_disablecopyonread_while_decoder_11_gru_23_gru_cell_23_kernel:
a
Mread_6_disablecopyonread_while_decoder_11_gru_23_gru_cell_23_recurrent_kernel:
T
Aread_7_disablecopyonread_while_decoder_11_gru_23_gru_cell_23_bias:	c
Oread_8_disablecopyonread_while_decoder_11_bahdanau_attention_15_dense_52_kernel:
c
Oread_9_disablecopyonread_while_decoder_11_bahdanau_attention_15_dense_53_kernel:
k
\read_10_disablecopyonread_while_decoder_11_bahdanau_attention_15_additive_attention_15_scale:	N
:read_11_disablecopyonread_while_decoder_11_dense_54_kernel:
M
:read_12_disablecopyonread_while_decoder_11_dense_55_kernel:	YF
8read_13_disablecopyonread_while_decoder_11_dense_55_bias:YL
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
: 
Read/DisableCopyOnReadDisableCopyOnRead9read_disablecopyonread_encoder_11_embedding_22_embeddings"/device:CPU:0*
_output_shapes
 ś
Read/ReadVariableOpReadVariableOp9read_disablecopyonread_encoder_11_embedding_22_embeddings^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	'*
dtype0j
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	'b

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes
:	'
Read_1/DisableCopyOnReadDisableCopyOnRead=read_1_disablecopyonread_encoder_11_gru_22_gru_cell_22_kernel"/device:CPU:0*
_output_shapes
 ż
Read_1/ReadVariableOpReadVariableOp=read_1_disablecopyonread_encoder_11_gru_22_gru_cell_22_kernel^Read_1/DisableCopyOnRead"/device:CPU:0* 
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

Read_2/DisableCopyOnReadDisableCopyOnReadGread_2_disablecopyonread_encoder_11_gru_22_gru_cell_22_recurrent_kernel"/device:CPU:0*
_output_shapes
 É
Read_2/ReadVariableOpReadVariableOpGread_2_disablecopyonread_encoder_11_gru_22_gru_cell_22_recurrent_kernel^Read_2/DisableCopyOnRead"/device:CPU:0* 
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

Read_3/DisableCopyOnReadDisableCopyOnRead;read_3_disablecopyonread_encoder_11_gru_22_gru_cell_22_bias"/device:CPU:0*
_output_shapes
 ź
Read_3/ReadVariableOpReadVariableOp;read_3_disablecopyonread_encoder_11_gru_22_gru_cell_22_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
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
:	
Read_4/DisableCopyOnReadDisableCopyOnReadAread_4_disablecopyonread_while_decoder_11_embedding_23_embeddings"/device:CPU:0*
_output_shapes
 Â
Read_4/ReadVariableOpReadVariableOpAread_4_disablecopyonread_while_decoder_11_embedding_23_embeddings^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	Y*
dtype0n

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	Yd

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes
:	Y
Read_5/DisableCopyOnReadDisableCopyOnReadCread_5_disablecopyonread_while_decoder_11_gru_23_gru_cell_23_kernel"/device:CPU:0*
_output_shapes
 Ĺ
Read_5/ReadVariableOpReadVariableOpCread_5_disablecopyonread_while_decoder_11_gru_23_gru_cell_23_kernel^Read_5/DisableCopyOnRead"/device:CPU:0* 
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
Ą
Read_6/DisableCopyOnReadDisableCopyOnReadMread_6_disablecopyonread_while_decoder_11_gru_23_gru_cell_23_recurrent_kernel"/device:CPU:0*
_output_shapes
 Ď
Read_6/ReadVariableOpReadVariableOpMread_6_disablecopyonread_while_decoder_11_gru_23_gru_cell_23_recurrent_kernel^Read_6/DisableCopyOnRead"/device:CPU:0* 
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

Read_7/DisableCopyOnReadDisableCopyOnReadAread_7_disablecopyonread_while_decoder_11_gru_23_gru_cell_23_bias"/device:CPU:0*
_output_shapes
 Â
Read_7/ReadVariableOpReadVariableOpAread_7_disablecopyonread_while_decoder_11_gru_23_gru_cell_23_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
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
:	Ł
Read_8/DisableCopyOnReadDisableCopyOnReadOread_8_disablecopyonread_while_decoder_11_bahdanau_attention_15_dense_52_kernel"/device:CPU:0*
_output_shapes
 Ń
Read_8/ReadVariableOpReadVariableOpOread_8_disablecopyonread_while_decoder_11_bahdanau_attention_15_dense_52_kernel^Read_8/DisableCopyOnRead"/device:CPU:0* 
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
Ł
Read_9/DisableCopyOnReadDisableCopyOnReadOread_9_disablecopyonread_while_decoder_11_bahdanau_attention_15_dense_53_kernel"/device:CPU:0*
_output_shapes
 Ń
Read_9/ReadVariableOpReadVariableOpOread_9_disablecopyonread_while_decoder_11_bahdanau_attention_15_dense_53_kernel^Read_9/DisableCopyOnRead"/device:CPU:0* 
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
ą
Read_10/DisableCopyOnReadDisableCopyOnRead\read_10_disablecopyonread_while_decoder_11_bahdanau_attention_15_additive_attention_15_scale"/device:CPU:0*
_output_shapes
 Ű
Read_10/ReadVariableOpReadVariableOp\read_10_disablecopyonread_while_decoder_11_bahdanau_attention_15_additive_attention_15_scale^Read_10/DisableCopyOnRead"/device:CPU:0*
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
:
Read_11/DisableCopyOnReadDisableCopyOnRead:read_11_disablecopyonread_while_decoder_11_dense_54_kernel"/device:CPU:0*
_output_shapes
 ž
Read_11/ReadVariableOpReadVariableOp:read_11_disablecopyonread_while_decoder_11_dense_54_kernel^Read_11/DisableCopyOnRead"/device:CPU:0* 
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

Read_12/DisableCopyOnReadDisableCopyOnRead:read_12_disablecopyonread_while_decoder_11_dense_55_kernel"/device:CPU:0*
_output_shapes
 ˝
Read_12/ReadVariableOpReadVariableOp:read_12_disablecopyonread_while_decoder_11_dense_55_kernel^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	Y*
dtype0p
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	Yf
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes
:	Y
Read_13/DisableCopyOnReadDisableCopyOnRead8read_13_disablecopyonread_while_decoder_11_dense_55_bias"/device:CPU:0*
_output_shapes
 ś
Read_13/ReadVariableOpReadVariableOp8read_13_disablecopyonread_while_decoder_11_dense_55_bias^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:Y*
dtype0k
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:Ya
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
:YĐ
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
ż
č

<__inference___backward_gpu_gru_with_fallback_1292392_1292528
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
api_implements*(gru_c6b1b783-8c03-4bf7-8f71-7a016ecb2847*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_gru_with_fallback_1292527*
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
>
¤
 __inference_standard_gru_1291912

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
value	B : ź
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
bodyR
while_body_1291823*
condR
while_cond_1291822*Y
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
api_implements*(gru_1f0fe79e-5ce3-4d54-80da-2e1582d649c3*
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
Č-
ă
while_body_1290912
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
Ç
Đ
-while_TensorArrayV2Write_1_cond_false_1289509/
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
Ę5
°
)__inference_gpu_gru_with_fallback_1290295

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
api_implements*(gru_2eabfbb4-538b-4586-b1e5-fea839885392*
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
ú	
ä
while_cond_1290129
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice5
1while_while_cond_1290129___redundant_placeholder05
1while_while_cond_1290129___redundant_placeholder15
1while_while_cond_1290129___redundant_placeholder25
1while_while_cond_1290129___redundant_placeholder35
1while_while_cond_1290129___redundant_placeholder4
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

0
 __inference__initializer_1292987
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
ť?
˝
'__forward_gpu_gru_with_fallback_1292904

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
api_implements*(gru_7ebff0c3-f658-4c67-9e36-9a538dc84c29*
api_preferred_deviceGPU*X
backward_function_name><__inference___backward_gpu_gru_with_fallback_1292769_1292905*
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

O
while_cond_false_1288897
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
ż
č

<__inference___backward_gpu_gru_with_fallback_1291989_1292125
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
api_implements*(gru_1f0fe79e-5ce3-4d54-80da-2e1582d649c3*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_gru_with_fallback_1292124*
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
Ď=
¤
 __inference_standard_gru_1289077

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
value	B : ź
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
bodyR
while_body_1288988*
condR
while_cond_1288987*Y
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
api_implements*(gru_40a46304-ac65-4e04-9f6b-9242ed7289d2*
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
ť?
˝
'__forward_gpu_gru_with_fallback_1291747

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
api_implements*(gru_f26c406d-401e-4577-bd5d-2024d30b9db7*
api_preferred_deviceGPU*X
backward_function_name><__inference___backward_gpu_gru_with_fallback_1291612_1291748*
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

.
__inference__destroyer_1292992
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
ż
Ź
while_body_1288881
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
while_range_limit_0M
Iwhile_notequal_text_vectorization_6_raggedtotensor_raggedtensortotensor_0	K
8while_decoder_11_embedding_23_embedding_lookup_1288923_0:	YJ
6while_decoder_11_gru_23_read_readvariableop_resource_0:
L
8while_decoder_11_gru_23_read_1_readvariableop_resource_0:
K
8while_decoder_11_gru_23_read_2_readvariableop_resource_0:	g
Swhile_decoder_11_bahdanau_attention_15_dense_52_tensordot_readvariableop_resource_0:
g
Swhile_decoder_11_bahdanau_attention_15_dense_53_tensordot_readvariableop_resource_0:
g
cwhile_decoder_11_bahdanau_attention_15_dense_53_tensordot_shape_encoder_11_gru_22_partitionedcall_0e
Vwhile_decoder_11_bahdanau_attention_15_additive_attention_15_readvariableop_resource_0:	Q
=while_decoder_11_dense_54_tensordot_readvariableop_resource_0:
P
=while_decoder_11_dense_55_tensordot_readvariableop_resource_0:	YI
;while_decoder_11_dense_55_biasadd_readvariableop_resource_0:Y
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
while_range_limitK
Gwhile_notequal_text_vectorization_6_raggedtotensor_raggedtensortotensor	I
6while_decoder_11_embedding_23_embedding_lookup_1288923:	YH
4while_decoder_11_gru_23_read_readvariableop_resource:
J
6while_decoder_11_gru_23_read_1_readvariableop_resource:
I
6while_decoder_11_gru_23_read_2_readvariableop_resource:	e
Qwhile_decoder_11_bahdanau_attention_15_dense_52_tensordot_readvariableop_resource:
e
Qwhile_decoder_11_bahdanau_attention_15_dense_53_tensordot_readvariableop_resource:
e
awhile_decoder_11_bahdanau_attention_15_dense_53_tensordot_shape_encoder_11_gru_22_partitionedcallc
Twhile_decoder_11_bahdanau_attention_15_additive_attention_15_readvariableop_resource:	O
;while_decoder_11_dense_54_tensordot_readvariableop_resource:
N
;while_decoder_11_dense_55_tensordot_readvariableop_resource:	YG
9while_decoder_11_dense_55_biasadd_readvariableop_resource:Y
while_equal_x	
while_add_range_delta˘Kwhile/decoder_11/bahdanau_attention_15/additive_attention_15/ReadVariableOp˘Hwhile/decoder_11/bahdanau_attention_15/dense_52/Tensordot/ReadVariableOp˘Hwhile/decoder_11/bahdanau_attention_15/dense_53/Tensordot/ReadVariableOp˘2while/decoder_11/dense_54/Tensordot/ReadVariableOp˘0while/decoder_11/dense_55/BiasAdd/ReadVariableOp˘2while/decoder_11/dense_55/Tensordot/ReadVariableOp˘.while/decoder_11/embedding_23/embedding_lookup˘+while/decoder_11/gru_23/Read/ReadVariableOp˘-while/decoder_11/gru_23/Read_1/ReadVariableOp˘-while/decoder_11/gru_23/Read_2/ReadVariableOpR
while/NotEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R Ű
while/NotEqualNotEqualIwhile_notequal_text_vectorization_6_raggedtotensor_raggedtensortotensor_0while/NotEqual/y:output:0*
T0	*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
incompatible_shape_error( Ľ
.while/decoder_11/embedding_23/embedding_lookupResourceGather8while_decoder_11_embedding_23_embedding_lookup_1288923_0while_placeholder_6*
Tindices0	*I
_class?
=;loc:@while/decoder_11/embedding_23/embedding_lookup/1288923*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0ţ
7while/decoder_11/embedding_23/embedding_lookup/IdentityIdentity7while/decoder_11/embedding_23/embedding_lookup:output:0*
T0*I
_class?
=;loc:@while/decoder_11/embedding_23/embedding_lookup/1288923*,
_output_shapes
:˙˙˙˙˙˙˙˙˙ž
9while/decoder_11/embedding_23/embedding_lookup/Identity_1Identity@while/decoder_11/embedding_23/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙¤
+while/decoder_11/gru_23/Read/ReadVariableOpReadVariableOp6while_decoder_11_gru_23_read_readvariableop_resource_0* 
_output_shapes
:
*
dtype0
 while/decoder_11/gru_23/IdentityIdentity3while/decoder_11/gru_23/Read/ReadVariableOp:value:0*
T0* 
_output_shapes
:
¨
-while/decoder_11/gru_23/Read_1/ReadVariableOpReadVariableOp8while_decoder_11_gru_23_read_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0
"while/decoder_11/gru_23/Identity_1Identity5while/decoder_11/gru_23/Read_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
§
-while/decoder_11/gru_23/Read_2/ReadVariableOpReadVariableOp8while_decoder_11_gru_23_read_2_readvariableop_resource_0*
_output_shapes
:	*
dtype0
"while/decoder_11/gru_23/Identity_2Identity5while/decoder_11/gru_23/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	˛
'while/decoder_11/gru_23/PartitionedCallPartitionedCallBwhile/decoder_11/embedding_23/embedding_lookup/Identity_1:output:0while_placeholder_4)while/decoder_11/gru_23/Identity:output:0+while/decoder_11/gru_23/Identity_1:output:0+while/decoder_11/gru_23/Identity_2:output:0*
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
GPU2*0J 8 *)
f$R"
 __inference_standard_gru_1289077Ţ
Hwhile/decoder_11/bahdanau_attention_15/dense_52/Tensordot/ReadVariableOpReadVariableOpSwhile_decoder_11_bahdanau_attention_15_dense_52_tensordot_readvariableop_resource_0* 
_output_shapes
:
*
dtype0
>while/decoder_11/bahdanau_attention_15/dense_52/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
>while/decoder_11/bahdanau_attention_15/dense_52/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ­
?while/decoder_11/bahdanau_attention_15/dense_52/Tensordot/ShapeShape0while/decoder_11/gru_23/PartitionedCall:output:1*
T0*
_output_shapes
::íĎ
Gwhile/decoder_11/bahdanau_attention_15/dense_52/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ű
Bwhile/decoder_11/bahdanau_attention_15/dense_52/Tensordot/GatherV2GatherV2Hwhile/decoder_11/bahdanau_attention_15/dense_52/Tensordot/Shape:output:0Gwhile/decoder_11/bahdanau_attention_15/dense_52/Tensordot/free:output:0Pwhile/decoder_11/bahdanau_attention_15/dense_52/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
Iwhile/decoder_11/bahdanau_attention_15/dense_52/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ˙
Dwhile/decoder_11/bahdanau_attention_15/dense_52/Tensordot/GatherV2_1GatherV2Hwhile/decoder_11/bahdanau_attention_15/dense_52/Tensordot/Shape:output:0Gwhile/decoder_11/bahdanau_attention_15/dense_52/Tensordot/axes:output:0Rwhile/decoder_11/bahdanau_attention_15/dense_52/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
?while/decoder_11/bahdanau_attention_15/dense_52/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ţ
>while/decoder_11/bahdanau_attention_15/dense_52/Tensordot/ProdProdKwhile/decoder_11/bahdanau_attention_15/dense_52/Tensordot/GatherV2:output:0Hwhile/decoder_11/bahdanau_attention_15/dense_52/Tensordot/Const:output:0*
T0*
_output_shapes
: 
Awhile/decoder_11/bahdanau_attention_15/dense_52/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
@while/decoder_11/bahdanau_attention_15/dense_52/Tensordot/Prod_1ProdMwhile/decoder_11/bahdanau_attention_15/dense_52/Tensordot/GatherV2_1:output:0Jwhile/decoder_11/bahdanau_attention_15/dense_52/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 
Ewhile/decoder_11/bahdanau_attention_15/dense_52/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ü
@while/decoder_11/bahdanau_attention_15/dense_52/Tensordot/concatConcatV2Gwhile/decoder_11/bahdanau_attention_15/dense_52/Tensordot/free:output:0Gwhile/decoder_11/bahdanau_attention_15/dense_52/Tensordot/axes:output:0Nwhile/decoder_11/bahdanau_attention_15/dense_52/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
?while/decoder_11/bahdanau_attention_15/dense_52/Tensordot/stackPackGwhile/decoder_11/bahdanau_attention_15/dense_52/Tensordot/Prod:output:0Iwhile/decoder_11/bahdanau_attention_15/dense_52/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
Cwhile/decoder_11/bahdanau_attention_15/dense_52/Tensordot/transpose	Transpose0while/decoder_11/gru_23/PartitionedCall:output:1Iwhile/decoder_11/bahdanau_attention_15/dense_52/Tensordot/concat:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
Awhile/decoder_11/bahdanau_attention_15/dense_52/Tensordot/ReshapeReshapeGwhile/decoder_11/bahdanau_attention_15/dense_52/Tensordot/transpose:y:0Hwhile/decoder_11/bahdanau_attention_15/dense_52/Tensordot/stack:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
@while/decoder_11/bahdanau_attention_15/dense_52/Tensordot/MatMulMatMulJwhile/decoder_11/bahdanau_attention_15/dense_52/Tensordot/Reshape:output:0Pwhile/decoder_11/bahdanau_attention_15/dense_52/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Awhile/decoder_11/bahdanau_attention_15/dense_52/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:
Gwhile/decoder_11/bahdanau_attention_15/dense_52/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ç
Bwhile/decoder_11/bahdanau_attention_15/dense_52/Tensordot/concat_1ConcatV2Kwhile/decoder_11/bahdanau_attention_15/dense_52/Tensordot/GatherV2:output:0Jwhile/decoder_11/bahdanau_attention_15/dense_52/Tensordot/Const_2:output:0Pwhile/decoder_11/bahdanau_attention_15/dense_52/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
9while/decoder_11/bahdanau_attention_15/dense_52/TensordotReshapeJwhile/decoder_11/bahdanau_attention_15/dense_52/Tensordot/MatMul:product:0Kwhile/decoder_11/bahdanau_attention_15/dense_52/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙Ţ
Hwhile/decoder_11/bahdanau_attention_15/dense_53/Tensordot/ReadVariableOpReadVariableOpSwhile_decoder_11_bahdanau_attention_15_dense_53_tensordot_readvariableop_resource_0* 
_output_shapes
:
*
dtype0
>while/decoder_11/bahdanau_attention_15/dense_53/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
>while/decoder_11/bahdanau_attention_15/dense_53/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ŕ
?while/decoder_11/bahdanau_attention_15/dense_53/Tensordot/ShapeShapecwhile_decoder_11_bahdanau_attention_15_dense_53_tensordot_shape_encoder_11_gru_22_partitionedcall_0*
T0*
_output_shapes
::íĎ
Gwhile/decoder_11/bahdanau_attention_15/dense_53/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ű
Bwhile/decoder_11/bahdanau_attention_15/dense_53/Tensordot/GatherV2GatherV2Hwhile/decoder_11/bahdanau_attention_15/dense_53/Tensordot/Shape:output:0Gwhile/decoder_11/bahdanau_attention_15/dense_53/Tensordot/free:output:0Pwhile/decoder_11/bahdanau_attention_15/dense_53/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
Iwhile/decoder_11/bahdanau_attention_15/dense_53/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ˙
Dwhile/decoder_11/bahdanau_attention_15/dense_53/Tensordot/GatherV2_1GatherV2Hwhile/decoder_11/bahdanau_attention_15/dense_53/Tensordot/Shape:output:0Gwhile/decoder_11/bahdanau_attention_15/dense_53/Tensordot/axes:output:0Rwhile/decoder_11/bahdanau_attention_15/dense_53/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
?while/decoder_11/bahdanau_attention_15/dense_53/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ţ
>while/decoder_11/bahdanau_attention_15/dense_53/Tensordot/ProdProdKwhile/decoder_11/bahdanau_attention_15/dense_53/Tensordot/GatherV2:output:0Hwhile/decoder_11/bahdanau_attention_15/dense_53/Tensordot/Const:output:0*
T0*
_output_shapes
: 
Awhile/decoder_11/bahdanau_attention_15/dense_53/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
@while/decoder_11/bahdanau_attention_15/dense_53/Tensordot/Prod_1ProdMwhile/decoder_11/bahdanau_attention_15/dense_53/Tensordot/GatherV2_1:output:0Jwhile/decoder_11/bahdanau_attention_15/dense_53/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 
Ewhile/decoder_11/bahdanau_attention_15/dense_53/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ü
@while/decoder_11/bahdanau_attention_15/dense_53/Tensordot/concatConcatV2Gwhile/decoder_11/bahdanau_attention_15/dense_53/Tensordot/free:output:0Gwhile/decoder_11/bahdanau_attention_15/dense_53/Tensordot/axes:output:0Nwhile/decoder_11/bahdanau_attention_15/dense_53/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
?while/decoder_11/bahdanau_attention_15/dense_53/Tensordot/stackPackGwhile/decoder_11/bahdanau_attention_15/dense_53/Tensordot/Prod:output:0Iwhile/decoder_11/bahdanau_attention_15/dense_53/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Ŕ
Cwhile/decoder_11/bahdanau_attention_15/dense_53/Tensordot/transpose	Transposecwhile_decoder_11_bahdanau_attention_15_dense_53_tensordot_shape_encoder_11_gru_22_partitionedcall_0Iwhile/decoder_11/bahdanau_attention_15/dense_53/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Awhile/decoder_11/bahdanau_attention_15/dense_53/Tensordot/ReshapeReshapeGwhile/decoder_11/bahdanau_attention_15/dense_53/Tensordot/transpose:y:0Hwhile/decoder_11/bahdanau_attention_15/dense_53/Tensordot/stack:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
@while/decoder_11/bahdanau_attention_15/dense_53/Tensordot/MatMulMatMulJwhile/decoder_11/bahdanau_attention_15/dense_53/Tensordot/Reshape:output:0Pwhile/decoder_11/bahdanau_attention_15/dense_53/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Awhile/decoder_11/bahdanau_attention_15/dense_53/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:
Gwhile/decoder_11/bahdanau_attention_15/dense_53/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ç
Bwhile/decoder_11/bahdanau_attention_15/dense_53/Tensordot/concat_1ConcatV2Kwhile/decoder_11/bahdanau_attention_15/dense_53/Tensordot/GatherV2:output:0Jwhile/decoder_11/bahdanau_attention_15/dense_53/Tensordot/Const_2:output:0Pwhile/decoder_11/bahdanau_attention_15/dense_53/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
9while/decoder_11/bahdanau_attention_15/dense_53/TensordotReshapeJwhile/decoder_11/bahdanau_attention_15/dense_53/Tensordot/MatMul:product:0Kwhile/decoder_11/bahdanau_attention_15/dense_53/Tensordot/concat_1:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
,while/decoder_11/bahdanau_attention_15/ShapeShape0while/decoder_11/gru_23/PartitionedCall:output:1*
T0*
_output_shapes
::íĎ
:while/decoder_11/bahdanau_attention_15/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
<while/decoder_11/bahdanau_attention_15/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙
<while/decoder_11/bahdanau_attention_15/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
4while/decoder_11/bahdanau_attention_15/strided_sliceStridedSlice5while/decoder_11/bahdanau_attention_15/Shape:output:0Cwhile/decoder_11/bahdanau_attention_15/strided_slice/stack:output:0Ewhile/decoder_11/bahdanau_attention_15/strided_slice/stack_1:output:0Ewhile/decoder_11/bahdanau_attention_15/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_masks
1while/decoder_11/bahdanau_attention_15/ones/ConstConst*
_output_shapes
: *
dtype0
*
value	B
 Zŕ
+while/decoder_11/bahdanau_attention_15/onesFill=while/decoder_11/bahdanau_attention_15/strided_slice:output:0:while/decoder_11/bahdanau_attention_15/ones/Const:output:0*
T0
*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Kwhile/decoder_11/bahdanau_attention_15/additive_attention_15/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ţ˙˙˙˙˙˙˙˙Ş
Gwhile/decoder_11/bahdanau_attention_15/additive_attention_15/ExpandDims
ExpandDimsBwhile/decoder_11/bahdanau_attention_15/dense_52/Tensordot:output:0Twhile/decoder_11/bahdanau_attention_15/additive_attention_15/ExpandDims/dim:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
Mwhile/decoder_11/bahdanau_attention_15/additive_attention_15/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
valueB :
ý˙˙˙˙˙˙˙˙ˇ
Iwhile/decoder_11/bahdanau_attention_15/additive_attention_15/ExpandDims_1
ExpandDimsBwhile/decoder_11/bahdanau_attention_15/dense_53/Tensordot:output:0Vwhile/decoder_11/bahdanau_attention_15/additive_attention_15/ExpandDims_1/dim:output:0*
T0*9
_output_shapes'
%:#˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙ł
@while/decoder_11/bahdanau_attention_15/additive_attention_15/addAddV2Pwhile/decoder_11/bahdanau_attention_15/additive_attention_15/ExpandDims:output:0Rwhile/decoder_11/bahdanau_attention_15/additive_attention_15/ExpandDims_1:output:0*
T0*9
_output_shapes'
%:#˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙Ó
Awhile/decoder_11/bahdanau_attention_15/additive_attention_15/TanhTanhDwhile/decoder_11/bahdanau_attention_15/additive_attention_15/add:z:0*
T0*9
_output_shapes'
%:#˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙ß
Kwhile/decoder_11/bahdanau_attention_15/additive_attention_15/ReadVariableOpReadVariableOpVwhile_decoder_11_bahdanau_attention_15_additive_attention_15_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
@while/decoder_11/bahdanau_attention_15/additive_attention_15/mulMulSwhile/decoder_11/bahdanau_attention_15/additive_attention_15/ReadVariableOp:value:0Ewhile/decoder_11/bahdanau_attention_15/additive_attention_15/Tanh:y:0*
T0*9
_output_shapes'
%:#˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Rwhile/decoder_11/bahdanau_attention_15/additive_attention_15/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Š
@while/decoder_11/bahdanau_attention_15/additive_attention_15/SumSumDwhile/decoder_11/bahdanau_attention_15/additive_attention_15/mul:z:0[while/decoder_11/bahdanau_attention_15/additive_attention_15/Sum/reduction_indices:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Mwhile/decoder_11/bahdanau_attention_15/additive_attention_15/ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
valueB :
ţ˙˙˙˙˙˙˙˙
Iwhile/decoder_11/bahdanau_attention_15/additive_attention_15/ExpandDims_2
ExpandDimswhile/NotEqual:z:0Vwhile/decoder_11/bahdanau_attention_15/additive_attention_15/ExpandDims_2/dim:output:0*
T0
*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙ß
Gwhile/decoder_11/bahdanau_attention_15/additive_attention_15/LogicalNot
LogicalNotRwhile/decoder_11/bahdanau_attention_15/additive_attention_15/ExpandDims_2:output:0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙ä
Awhile/decoder_11/bahdanau_attention_15/additive_attention_15/CastCastKwhile/decoder_11/bahdanau_attention_15/additive_attention_15/LogicalNot:y:0*

DstT0*

SrcT0
*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Dwhile/decoder_11/bahdanau_attention_15/additive_attention_15/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *(knN
Bwhile/decoder_11/bahdanau_attention_15/additive_attention_15/mul_1MulMwhile/decoder_11/bahdanau_attention_15/additive_attention_15/mul_1/x:output:0Ewhile/decoder_11/bahdanau_attention_15/additive_attention_15/Cast:y:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
@while/decoder_11/bahdanau_attention_15/additive_attention_15/subSubIwhile/decoder_11/bahdanau_attention_15/additive_attention_15/Sum:output:0Fwhile/decoder_11/bahdanau_attention_15/additive_attention_15/mul_1:z:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙Ô
Dwhile/decoder_11/bahdanau_attention_15/additive_attention_15/SoftmaxSoftmaxDwhile/decoder_11/bahdanau_attention_15/additive_attention_15/sub:z:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙Ŕ
Cwhile/decoder_11/bahdanau_attention_15/additive_attention_15/MatMulBatchMatMulV2Nwhile/decoder_11/bahdanau_attention_15/additive_attention_15/Softmax:softmax:0cwhile_decoder_11_bahdanau_attention_15_dense_53_tensordot_shape_encoder_11_gru_22_partitionedcall_0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
Mwhile/decoder_11/bahdanau_attention_15/additive_attention_15/ExpandDims_3/dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙
Iwhile/decoder_11/bahdanau_attention_15/additive_attention_15/ExpandDims_3
ExpandDims4while/decoder_11/bahdanau_attention_15/ones:output:0Vwhile/decoder_11/bahdanau_attention_15/additive_attention_15/ExpandDims_3/dim:output:0*
T0
*+
_output_shapes
:˙˙˙˙˙˙˙˙˙ä
Cwhile/decoder_11/bahdanau_attention_15/additive_attention_15/Cast_1CastRwhile/decoder_11/bahdanau_attention_15/additive_attention_15/ExpandDims_3:output:0*

DstT0*

SrcT0
*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
Bwhile/decoder_11/bahdanau_attention_15/additive_attention_15/mul_2MulLwhile/decoder_11/bahdanau_attention_15/additive_attention_15/MatMul:output:0Gwhile/decoder_11/bahdanau_attention_15/additive_attention_15/Cast_1:y:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙g
while/decoder_11/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙
while/decoder_11/concatConcatV2Fwhile/decoder_11/bahdanau_attention_15/additive_attention_15/mul_2:z:00while/decoder_11/gru_23/PartitionedCall:output:1%while/decoder_11/concat/axis:output:0*
N*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙˛
2while/decoder_11/dense_54/Tensordot/ReadVariableOpReadVariableOp=while_decoder_11_dense_54_tensordot_readvariableop_resource_0* 
_output_shapes
:
*
dtype0r
(while/decoder_11/dense_54/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:y
(while/decoder_11/dense_54/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       
)while/decoder_11/dense_54/Tensordot/ShapeShape while/decoder_11/concat:output:0*
T0*
_output_shapes
::íĎs
1while/decoder_11/dense_54/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Ł
,while/decoder_11/dense_54/Tensordot/GatherV2GatherV22while/decoder_11/dense_54/Tensordot/Shape:output:01while/decoder_11/dense_54/Tensordot/free:output:0:while/decoder_11/dense_54/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:u
3while/decoder_11/dense_54/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : §
.while/decoder_11/dense_54/Tensordot/GatherV2_1GatherV22while/decoder_11/dense_54/Tensordot/Shape:output:01while/decoder_11/dense_54/Tensordot/axes:output:0<while/decoder_11/dense_54/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:s
)while/decoder_11/dense_54/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ź
(while/decoder_11/dense_54/Tensordot/ProdProd5while/decoder_11/dense_54/Tensordot/GatherV2:output:02while/decoder_11/dense_54/Tensordot/Const:output:0*
T0*
_output_shapes
: u
+while/decoder_11/dense_54/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: Â
*while/decoder_11/dense_54/Tensordot/Prod_1Prod7while/decoder_11/dense_54/Tensordot/GatherV2_1:output:04while/decoder_11/dense_54/Tensordot/Const_1:output:0*
T0*
_output_shapes
: q
/while/decoder_11/dense_54/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
*while/decoder_11/dense_54/Tensordot/concatConcatV21while/decoder_11/dense_54/Tensordot/free:output:01while/decoder_11/dense_54/Tensordot/axes:output:08while/decoder_11/dense_54/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:Ç
)while/decoder_11/dense_54/Tensordot/stackPack1while/decoder_11/dense_54/Tensordot/Prod:output:03while/decoder_11/dense_54/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Č
-while/decoder_11/dense_54/Tensordot/transpose	Transpose while/decoder_11/concat:output:03while/decoder_11/dense_54/Tensordot/concat:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙Ř
+while/decoder_11/dense_54/Tensordot/ReshapeReshape1while/decoder_11/dense_54/Tensordot/transpose:y:02while/decoder_11/dense_54/Tensordot/stack:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙Ů
*while/decoder_11/dense_54/Tensordot/MatMulMatMul4while/decoder_11/dense_54/Tensordot/Reshape:output:0:while/decoder_11/dense_54/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙v
+while/decoder_11/dense_54/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:s
1while/decoder_11/dense_54/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
,while/decoder_11/dense_54/Tensordot/concat_1ConcatV25while/decoder_11/dense_54/Tensordot/GatherV2:output:04while/decoder_11/dense_54/Tensordot/Const_2:output:0:while/decoder_11/dense_54/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Ň
#while/decoder_11/dense_54/TensordotReshape4while/decoder_11/dense_54/Tensordot/MatMul:product:05while/decoder_11/dense_54/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/decoder_11/dense_54/TanhTanh,while/decoder_11/dense_54/Tensordot:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙ą
2while/decoder_11/dense_55/Tensordot/ReadVariableOpReadVariableOp=while_decoder_11_dense_55_tensordot_readvariableop_resource_0*
_output_shapes
:	Y*
dtype0r
(while/decoder_11/dense_55/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:y
(while/decoder_11/dense_55/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       
)while/decoder_11/dense_55/Tensordot/ShapeShape"while/decoder_11/dense_54/Tanh:y:0*
T0*
_output_shapes
::íĎs
1while/decoder_11/dense_55/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Ł
,while/decoder_11/dense_55/Tensordot/GatherV2GatherV22while/decoder_11/dense_55/Tensordot/Shape:output:01while/decoder_11/dense_55/Tensordot/free:output:0:while/decoder_11/dense_55/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:u
3while/decoder_11/dense_55/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : §
.while/decoder_11/dense_55/Tensordot/GatherV2_1GatherV22while/decoder_11/dense_55/Tensordot/Shape:output:01while/decoder_11/dense_55/Tensordot/axes:output:0<while/decoder_11/dense_55/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:s
)while/decoder_11/dense_55/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ź
(while/decoder_11/dense_55/Tensordot/ProdProd5while/decoder_11/dense_55/Tensordot/GatherV2:output:02while/decoder_11/dense_55/Tensordot/Const:output:0*
T0*
_output_shapes
: u
+while/decoder_11/dense_55/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: Â
*while/decoder_11/dense_55/Tensordot/Prod_1Prod7while/decoder_11/dense_55/Tensordot/GatherV2_1:output:04while/decoder_11/dense_55/Tensordot/Const_1:output:0*
T0*
_output_shapes
: q
/while/decoder_11/dense_55/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
*while/decoder_11/dense_55/Tensordot/concatConcatV21while/decoder_11/dense_55/Tensordot/free:output:01while/decoder_11/dense_55/Tensordot/axes:output:08while/decoder_11/dense_55/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:Ç
)while/decoder_11/dense_55/Tensordot/stackPack1while/decoder_11/dense_55/Tensordot/Prod:output:03while/decoder_11/dense_55/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Ę
-while/decoder_11/dense_55/Tensordot/transpose	Transpose"while/decoder_11/dense_54/Tanh:y:03while/decoder_11/dense_55/Tensordot/concat:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙Ř
+while/decoder_11/dense_55/Tensordot/ReshapeReshape1while/decoder_11/dense_55/Tensordot/transpose:y:02while/decoder_11/dense_55/Tensordot/stack:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙Ř
*while/decoder_11/dense_55/Tensordot/MatMulMatMul4while/decoder_11/dense_55/Tensordot/Reshape:output:0:while/decoder_11/dense_55/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Yu
+while/decoder_11/dense_55/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Ys
1while/decoder_11/dense_55/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
,while/decoder_11/dense_55/Tensordot/concat_1ConcatV25while/decoder_11/dense_55/Tensordot/GatherV2:output:04while/decoder_11/dense_55/Tensordot/Const_2:output:0:while/decoder_11/dense_55/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Ń
#while/decoder_11/dense_55/TensordotReshape4while/decoder_11/dense_55/Tensordot/MatMul:product:05while/decoder_11/dense_55/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙Y¨
0while/decoder_11/dense_55/BiasAdd/ReadVariableOpReadVariableOp;while_decoder_11_dense_55_biasadd_readvariableop_resource_0*
_output_shapes
:Y*
dtype0Ę
!while/decoder_11/dense_55/BiasAddBiasAdd,while/decoder_11/dense_55/Tensordot:output:08while/decoder_11/dense_55/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙Yj
)while/TensorArrayV2Write/TensorListLengthTensorListLengthwhile_placeholder_1*
_output_shapes
: 
%while/TensorArrayV2Write/GreaterEqualGreaterEqualwhile_placeholder2while/TensorArrayV2Write/TensorListLength:length:0*
T0*
_output_shapes
: 
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
 *>
else_branch/R-
+while_TensorArrayV2Write_cond_false_1289424*
output_shapes
: *=
then_branch.R,
*while_TensorArrayV2Write_cond_true_1289423{
&while/TensorArrayV2Write/cond/IdentityIdentity&while/TensorArrayV2Write/cond:output:0*
T0*
_output_shapes
: 
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItem/while/TensorArrayV2Write/cond/Identity:output:0while_placeholderNwhile/decoder_11/bahdanau_attention_15/additive_attention_15/Softmax:softmax:0*
_output_shapes
: *
element_dtype0:éčŇs
while/ShapeShape*while/decoder_11/dense_55/BiasAdd:output:0*
T0*
_output_shapes
::íĎu
while/Shape_1Shape*while/decoder_11/dense_55/BiasAdd:output:0*
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
shrink_axis_maskĂ
while/Repeat/dataConst*"
_output_shapes
:Y*
dtype0
*v
valuemBk
YZY                                                                                      g
while/Repeat/CastCastwhile/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: g
while/Repeat/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"      Y   ]
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
:Y_
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
:˙˙˙˙˙˙˙˙˙Yj
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
:˙˙˙˙˙˙˙˙˙Yu
while/Shape_2Shape*while/decoder_11/dense_55/BiasAdd:output:0*
T0*
_output_shapes
::íĎu
while/Shape_3Shape*while/decoder_11/dense_55/BiasAdd:output:0*
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
value	B :Y
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
:˙˙˙˙˙˙˙˙˙Y˛
while/SelectV2SelectV2while/Repeat/Reshape_1:output:0while/Fill:output:0*while/decoder_11/dense_55/BiasAdd:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙Yz
while/SqueezeSqueezewhile/SelectV2:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Y*
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
:˙˙˙˙˙˙˙˙˙Yk
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
: Ł
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
 *@
else_branch1R/
-while_TensorArrayV2Write_1_cond_false_1289509*
output_shapes
: *?
then_branch0R.
,while_TensorArrayV2Write_1_cond_true_1289508
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
: ˇ

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
 *+
else_branchR
while_cond_false_1289527*
output_shapes
: **
then_branchR
while_cond_true_1289526U
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
: 
while/Identity_6Identity0while/decoder_11/gru_23/PartitionedCall:output:2^while/NoOp*
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
:˙˙˙˙˙˙˙˙˙

while/NoOpNoOpL^while/decoder_11/bahdanau_attention_15/additive_attention_15/ReadVariableOpI^while/decoder_11/bahdanau_attention_15/dense_52/Tensordot/ReadVariableOpI^while/decoder_11/bahdanau_attention_15/dense_53/Tensordot/ReadVariableOp3^while/decoder_11/dense_54/Tensordot/ReadVariableOp1^while/decoder_11/dense_55/BiasAdd/ReadVariableOp3^while/decoder_11/dense_55/Tensordot/ReadVariableOp/^while/decoder_11/embedding_23/embedding_lookup,^while/decoder_11/gru_23/Read/ReadVariableOp.^while/decoder_11/gru_23/Read_1/ReadVariableOp.^while/decoder_11/gru_23/Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "0
while_add_range_deltawhile_add_range_delta_0"Ž
Twhile_decoder_11_bahdanau_attention_15_additive_attention_15_readvariableop_resourceVwhile_decoder_11_bahdanau_attention_15_additive_attention_15_readvariableop_resource_0"¨
Qwhile_decoder_11_bahdanau_attention_15_dense_52_tensordot_readvariableop_resourceSwhile_decoder_11_bahdanau_attention_15_dense_52_tensordot_readvariableop_resource_0"¨
Qwhile_decoder_11_bahdanau_attention_15_dense_53_tensordot_readvariableop_resourceSwhile_decoder_11_bahdanau_attention_15_dense_53_tensordot_readvariableop_resource_0"Č
awhile_decoder_11_bahdanau_attention_15_dense_53_tensordot_shape_encoder_11_gru_22_partitionedcallcwhile_decoder_11_bahdanau_attention_15_dense_53_tensordot_shape_encoder_11_gru_22_partitionedcall_0"|
;while_decoder_11_dense_54_tensordot_readvariableop_resource=while_decoder_11_dense_54_tensordot_readvariableop_resource_0"x
9while_decoder_11_dense_55_biasadd_readvariableop_resource;while_decoder_11_dense_55_biasadd_readvariableop_resource_0"|
;while_decoder_11_dense_55_tensordot_readvariableop_resource=while_decoder_11_dense_55_tensordot_readvariableop_resource_0"r
6while_decoder_11_embedding_23_embedding_lookup_12889238while_decoder_11_embedding_23_embedding_lookup_1288923_0"r
6while_decoder_11_gru_23_read_1_readvariableop_resource8while_decoder_11_gru_23_read_1_readvariableop_resource_0"r
6while_decoder_11_gru_23_read_2_readvariableop_resource8while_decoder_11_gru_23_read_2_readvariableop_resource_0"n
4while_decoder_11_gru_23_read_readvariableop_resource6while_decoder_11_gru_23_read_readvariableop_resource_0" 
while_equal_xwhile_equal_x_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"-
while_identity_6while/Identity_6:output:0"-
while_identity_7while/Identity_7:output:0"-
while_identity_8while/Identity_8:output:0"
Gwhile_notequal_text_vectorization_6_raggedtotensor_raggedtensortotensorIwhile_notequal_text_vectorization_6_raggedtotensor_raggedtensortotensor_0"(
while_range_limitwhile_range_limit_0*(
_construction_contextkEagerRuntime*˛
_input_shapes 
: : : : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : : : : :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : : : : 2
Kwhile/decoder_11/bahdanau_attention_15/additive_attention_15/ReadVariableOpKwhile/decoder_11/bahdanau_attention_15/additive_attention_15/ReadVariableOp2
Hwhile/decoder_11/bahdanau_attention_15/dense_52/Tensordot/ReadVariableOpHwhile/decoder_11/bahdanau_attention_15/dense_52/Tensordot/ReadVariableOp2
Hwhile/decoder_11/bahdanau_attention_15/dense_53/Tensordot/ReadVariableOpHwhile/decoder_11/bahdanau_attention_15/dense_53/Tensordot/ReadVariableOp2h
2while/decoder_11/dense_54/Tensordot/ReadVariableOp2while/decoder_11/dense_54/Tensordot/ReadVariableOp2d
0while/decoder_11/dense_55/BiasAdd/ReadVariableOp0while/decoder_11/dense_55/BiasAdd/ReadVariableOp2h
2while/decoder_11/dense_55/Tensordot/ReadVariableOp2while/decoder_11/dense_55/Tensordot/ReadVariableOp2`
.while/decoder_11/embedding_23/embedding_lookup.while/decoder_11/embedding_23/embedding_lookup2Z
+while/decoder_11/gru_23/Read/ReadVariableOp+while/decoder_11/gru_23/Read/ReadVariableOp2^
-while/decoder_11/gru_23/Read_1/ReadVariableOp-while/decoder_11/gru_23/Read_1/ReadVariableOp2^
-while/decoder_11/gru_23/Read_2/ReadVariableOp-while/decoder_11/gru_23/Read_2/ReadVariableOp:J F
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
R

#__inference__traced_restore_1293246
file_prefixF
3assignvariableop_encoder_11_embedding_22_embeddings:	'K
7assignvariableop_1_encoder_11_gru_22_gru_cell_22_kernel:
U
Aassignvariableop_2_encoder_11_gru_22_gru_cell_22_recurrent_kernel:
H
5assignvariableop_3_encoder_11_gru_22_gru_cell_22_bias:	N
;assignvariableop_4_while_decoder_11_embedding_23_embeddings:	YQ
=assignvariableop_5_while_decoder_11_gru_23_gru_cell_23_kernel:
[
Gassignvariableop_6_while_decoder_11_gru_23_gru_cell_23_recurrent_kernel:
N
;assignvariableop_7_while_decoder_11_gru_23_gru_cell_23_bias:	]
Iassignvariableop_8_while_decoder_11_bahdanau_attention_15_dense_52_kernel:
]
Iassignvariableop_9_while_decoder_11_bahdanau_attention_15_dense_53_kernel:
e
Vassignvariableop_10_while_decoder_11_bahdanau_attention_15_additive_attention_15_scale:	H
4assignvariableop_11_while_decoder_11_dense_54_kernel:
G
4assignvariableop_12_while_decoder_11_dense_55_kernel:	Y@
2assignvariableop_13_while_decoder_11_dense_55_bias:YO
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
:Ć
AssignVariableOpAssignVariableOp3assignvariableop_encoder_11_embedding_22_embeddingsIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Î
AssignVariableOp_1AssignVariableOp7assignvariableop_1_encoder_11_gru_22_gru_cell_22_kernelIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Ř
AssignVariableOp_2AssignVariableOpAassignvariableop_2_encoder_11_gru_22_gru_cell_22_recurrent_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Ě
AssignVariableOp_3AssignVariableOp5assignvariableop_3_encoder_11_gru_22_gru_cell_22_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Ň
AssignVariableOp_4AssignVariableOp;assignvariableop_4_while_decoder_11_embedding_23_embeddingsIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:Ô
AssignVariableOp_5AssignVariableOp=assignvariableop_5_while_decoder_11_gru_23_gru_cell_23_kernelIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:Ţ
AssignVariableOp_6AssignVariableOpGassignvariableop_6_while_decoder_11_gru_23_gru_cell_23_recurrent_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Ň
AssignVariableOp_7AssignVariableOp;assignvariableop_7_while_decoder_11_gru_23_gru_cell_23_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:ŕ
AssignVariableOp_8AssignVariableOpIassignvariableop_8_while_decoder_11_bahdanau_attention_15_dense_52_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:ŕ
AssignVariableOp_9AssignVariableOpIassignvariableop_9_while_decoder_11_bahdanau_attention_15_dense_53_kernelIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:ď
AssignVariableOp_10AssignVariableOpVassignvariableop_10_while_decoder_11_bahdanau_attention_15_additive_attention_15_scaleIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Í
AssignVariableOp_11AssignVariableOp4assignvariableop_11_while_decoder_11_dense_54_kernelIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:Í
AssignVariableOp_12AssignVariableOp4assignvariableop_12_while_decoder_11_dense_55_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:Ë
AssignVariableOp_13AssignVariableOp2assignvariableop_13_while_decoder_11_dense_55_biasIdentity_13:output:0"/device:CPU:0*&
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
>
¤
 __inference_standard_gru_1291535

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
value	B : ź
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
bodyR
while_body_1291446*
condR
while_cond_1291445*Y
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
api_implements*(gru_f26c406d-401e-4577-bd5d-2024d30b9db7*
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
ż
č

<__inference___backward_gpu_gru_with_fallback_1292769_1292905
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
api_implements*(gru_7ebff0c3-f658-4c67-9e36-9a538dc84c29*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_gru_with_fallback_1292904*
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
Ó
Ő
C__inference_gru_23_layer_call_and_return_conditional_losses_1292531
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
:	
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
GPU2*0J 8 *)
f$R"
 __inference_standard_gru_1292315w

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
Ó
<
__inference__creator_1292913
identity˘
hash_tableo

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0	*
shared_name	1242770*
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


 __inference__initializer_12929729
5key_value_init995975_lookuptableimportv2_table_handle1
-key_value_init995975_lookuptableimportv2_keys3
/key_value_init995975_lookuptableimportv2_values	
identity˘(key_value_init995975/LookupTableImportV2
(key_value_init995975/LookupTableImportV2LookupTableImportV25key_value_init995975_lookuptableimportv2_table_handle-key_value_init995975_lookuptableimportv2_keys/key_value_init995975_lookuptableimportv2_values*	
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
: q
NoOpNoOp)^key_value_init995975/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: :W:W2T
(key_value_init995975/LookupTableImportV2(key_value_init995975/LookupTableImportV2: 

_output_shapes
:W: 

_output_shapes
:W
ż
č

<__inference___backward_gpu_gru_with_fallback_1291078_1291214
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
api_implements*(gru_b8ffb741-c512-4436-b035-e42fa3ecf652*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_gru_with_fallback_1291213*
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
ň	
Í
(__inference_gru_23_layer_call_fn_1292154
inputs_0
unknown:

	unknown_0:

	unknown_1:	
identity

identity_1˘StatefulPartitionedCall
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
GPU2*0J 8 *L
fGRE
C__inference_gru_23_layer_call_and_return_conditional_losses_1291217}
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
>
¤
 __inference_standard_gru_1292315

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
value	B : ź
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
bodyR
while_body_1292226*
condR
while_cond_1292225*Y
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
api_implements*(gru_c6b1b783-8c03-4bf7-8f71-7a016ecb2847*
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
ˇ
Č
+while_TensorArrayV2Write_cond_false_1289424-
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
đ
Ű
__inference_restore_fn_1293046
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
Ę5
°
)__inference_gpu_gru_with_fallback_1289918

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
api_implements*(gru_e5206ce8-28f6-4669-b6b8-37e48983ffe4*
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
Ň
<
__inference__creator_1292964
identity˘
hash_tablen

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name995976*
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

0
 __inference__initializer_1292954
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
ú	
ä
while_cond_1292225
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice5
1while_while_cond_1292225___redundant_placeholder05
1while_while_cond_1292225___redundant_placeholder15
1while_while_cond_1292225___redundant_placeholder25
1while_while_cond_1292225___redundant_placeholder35
1while_while_cond_1292225___redundant_placeholder4
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
Č-
ă
while_body_1290535
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
>
¤
 __inference_standard_gru_1291001

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
value	B : ź
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
bodyR
while_body_1290912*
condR
while_cond_1290911*Y
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
api_implements*(gru_b8ffb741-c512-4436-b035-e42fa3ecf652*
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
ú	
ä
while_cond_1291445
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice5
1while_while_cond_1291445___redundant_placeholder05
1while_while_cond_1291445___redundant_placeholder15
1while_while_cond_1291445___redundant_placeholder25
1while_while_cond_1291445___redundant_placeholder35
1while_while_cond_1291445___redundant_placeholder4
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
ź
a
while_cond_true_1288896-
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
ú	
ä
while_cond_1292602
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice5
1while_while_cond_1292602___redundant_placeholder05
1while_while_cond_1292602___redundant_placeholder15
1while_while_cond_1292602___redundant_placeholder25
1while_while_cond_1292602___redundant_placeholder35
1while_while_cond_1292602___redundant_placeholder4
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
:"ó
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
StatefulPartitionedCall:1˙˙˙˙˙˙˙˙˙tensorflow/serving/predict: 
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
ő
$trace_02Ř
 __inference_tf_translate_1289623ł
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
Ú
ttrace_02˝
__inference_adapt_step_1291296
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
Ú
xtrace_02˝
__inference_adapt_step_1291348
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
ë
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
capture_23Bć
 __inference_tf_translate_1289623
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
Ń
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
capture_23BĚ
%__inference_signature_wrapper_1289680
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
5:3	'2"encoder_11/embedding_22/embeddings
8:6
2$encoder_11/gru_22/gru_cell_22/kernel
B:@
2.encoder_11/gru_22/gru_cell_22/recurrent_kernel
5:3	2"encoder_11/gru_22/gru_cell_22/bias
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
Ü
trace_0
trace_12Ą
(__inference_gru_22_layer_call_fn_1291361
(__inference_gru_22_layer_call_fn_1291374Ę
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

trace_0
trace_12×
C__inference_gru_22_layer_call_and_return_conditional_losses_1291751
C__inference_gru_22_layer_call_and_return_conditional_losses_1292128Ę
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
;:9	Y2(while/decoder_11/embedding_23/embeddings
>:<
2*while/decoder_11/gru_23/gru_cell_23/kernel
H:F
24while/decoder_11/gru_23/gru_cell_23/recurrent_kernel
;:9	2(while/decoder_11/gru_23/gru_cell_23/bias
J:H
26while/decoder_11/bahdanau_attention_15/dense_52/kernel
J:H
26while/decoder_11/bahdanau_attention_15/dense_53/kernel
Q:O2Bwhile/decoder_11/bahdanau_attention_15/additive_attention_15/scale
4:2
2 while/decoder_11/dense_54/kernel
3:1	Y2 while/decoder_11/dense_55/kernel
,:*Y2while/decoder_11/dense_55/bias
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
Ü
Śtrace_0
§trace_12Ą
(__inference_gru_23_layer_call_fn_1292141
(__inference_gru_23_layer_call_fn_1292154Ę
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

¨trace_0
Štrace_12×
C__inference_gru_23_layer_call_and_return_conditional_losses_1292531
C__inference_gru_23_layer_call_and_return_conditional_losses_1292908Ę
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
ě
Ú	capture_1BÉ
__inference_adapt_step_1291296iterator"
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
ě
â	capture_1BÉ
__inference_adapt_step_1291348iterator"
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
Ď
ătrace_02°
__inference__creator_1292913
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
Ó
ätrace_02´
 __inference__initializer_1292921
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
Ń
ĺtrace_02˛
__inference__destroyer_1292926
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
B
(__inference_gru_22_layer_call_fn_1291361inputs_0"Ę
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
B
(__inference_gru_22_layer_call_fn_1291374inputs_0"Ę
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
ĄB
C__inference_gru_22_layer_call_and_return_conditional_losses_1291751inputs_0"Ę
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
ĄB
C__inference_gru_22_layer_call_and_return_conditional_losses_1292128inputs_0"Ę
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
B
(__inference_gru_23_layer_call_fn_1292141inputs_0"Ę
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
B
(__inference_gru_23_layer_call_fn_1292154inputs_0"Ę
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
ĄB
C__inference_gru_23_layer_call_and_return_conditional_losses_1292531inputs_0"Ę
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
ĄB
C__inference_gru_23_layer_call_and_return_conditional_losses_1292908inputs_0"Ę
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
Ď
˙trace_02°
__inference__creator_1292931
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
Ó
trace_02´
 __inference__initializer_1292939
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
Ń
trace_02˛
__inference__destroyer_1292944
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
Ď
trace_02°
__inference__creator_1292949
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
Ó
trace_02´
 __inference__initializer_1292954
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
Ń
trace_02˛
__inference__destroyer_1292959
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
Ď
trace_02°
__inference__creator_1292964
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
Ó
trace_02´
 __inference__initializer_1292972
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
Ń
trace_02˛
__inference__destroyer_1292977
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
Ď
trace_02°
__inference__creator_1292982
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
Ó
trace_02´
 __inference__initializer_1292987
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
Ń
trace_02˛
__inference__destroyer_1292992
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
łB°
__inference__creator_1292913"
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
÷
	capture_1
	capture_2B´
 __inference__initializer_1292921"
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
ľB˛
__inference__destroyer_1292926"
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
łB°
__inference__creator_1292931"
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
÷
	capture_1
	capture_2B´
 __inference__initializer_1292939"
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
ľB˛
__inference__destroyer_1292944"
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
łB°
__inference__creator_1292949"
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
ˇB´
 __inference__initializer_1292954"
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
ľB˛
__inference__destroyer_1292959"
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
łB°
__inference__creator_1292964"
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
÷
	capture_1
	capture_2B´
 __inference__initializer_1292972"
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
ľB˛
__inference__destroyer_1292977"
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
łB°
__inference__creator_1292982"
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
ˇB´
 __inference__initializer_1292987"
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
ľB˛
__inference__destroyer_1292992"
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
ßBÜ
__inference_save_fn_1293011checkpoint_key"Ş
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
ĄB
__inference_restore_fn_1293019restored_tensors_0restored_tensors_1"Ń
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
ßBÜ
__inference_save_fn_1293038checkpoint_key"Ş
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
ĄB
__inference_restore_fn_1293046restored_tensors_0restored_tensors_1"Ń
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
		A
__inference__creator_1292913!˘

˘ 
Ş "
unknown A
__inference__creator_1292931!˘

˘ 
Ş "
unknown A
__inference__creator_1292949!˘

˘ 
Ş "
unknown A
__inference__creator_1292964!˘

˘ 
Ş "
unknown A
__inference__creator_1292982!˘

˘ 
Ş "
unknown C
__inference__destroyer_1292926!˘

˘ 
Ş "
unknown C
__inference__destroyer_1292944!˘

˘ 
Ş "
unknown C
__inference__destroyer_1292959!˘

˘ 
Ş "
unknown C
__inference__destroyer_1292977!˘

˘ 
Ş "
unknown C
__inference__destroyer_1292992!˘

˘ 
Ş "
unknown L
 __inference__initializer_1292921(#˘

˘ 
Ş "
unknown L
 __inference__initializer_1292939(r˘

˘ 
Ş "
unknown E
 __inference__initializer_1292954!˘

˘ 
Ş "
unknown L
 __inference__initializer_1292972(v˘

˘ 
Ş "
unknown E
 __inference__initializer_1292987!˘

˘ 
Ş "
unknown l
__inference_adapt_step_1291296JsÚ?˘<
5˘2
0-˘
˙˙˙˙˙˙˙˙˙IteratorSpec 
Ş "
 l
__inference_adapt_step_1291348Jwâ?˘<
5˘2
0-˘
˙˙˙˙˙˙˙˙˙IteratorSpec 
Ş "
 
C__inference_gru_22_layer_call_and_return_conditional_losses_1291751Á'()P˘M
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
 
C__inference_gru_22_layer_call_and_return_conditional_losses_1292128Á'()P˘M
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
 ŕ
(__inference_gru_22_layer_call_fn_1291361ł'()P˘M
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
tensor_1˙˙˙˙˙˙˙˙˙ŕ
(__inference_gru_22_layer_call_fn_1291374ł'()P˘M
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
tensor_1˙˙˙˙˙˙˙˙˙
C__inference_gru_23_layer_call_and_return_conditional_losses_1292531Á?@AP˘M
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
 
C__inference_gru_23_layer_call_and_return_conditional_losses_1292908Á?@AP˘M
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
 ŕ
(__inference_gru_23_layer_call_fn_1292141ł?@AP˘M
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
tensor_1˙˙˙˙˙˙˙˙˙ŕ
(__inference_gru_23_layer_call_fn_1292154ł?@AP˘M
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
tensor_1˙˙˙˙˙˙˙˙˙
__inference_restore_fn_1293019bsK˘H
A˘>

restored_tensors_0

restored_tensors_1	
Ş "
unknown 
__inference_restore_fn_1293046bwK˘H
A˘>

restored_tensors_0

restored_tensors_1	
Ş "
unknown Ŕ
__inference_save_fn_1293011 s&˘#
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
tensor_1_tensor	Ŕ
__inference_save_fn_1293038 w&˘#
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
tensor_1_tensor	ů
%__inference_signature_wrapper_1289680Ďr}~&'()>?@ABCDEFG#=˘:
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
text˙˙˙˙˙˙˙˙˙ć
 __inference_tf_translate_1289623Ár}~&'()>?@ABCDEFG#/˘,
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