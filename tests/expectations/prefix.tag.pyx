from libc.stdint cimport int8_t, int16_t, int32_t, int64_t, intptr_t
from libc.stdint cimport uint8_t, uint16_t, uint32_t, uint64_t, uintptr_t
cdef extern from *:
  ctypedef bint bool
  ctypedef struct va_list

cdef extern from *:

  const int32_t PREFIX_LEN = 22;

  const int64_t PREFIX_X = (22 << 22);

  const int64_t PREFIX_Y1 = ((22 << 22) + (22 << 22));

  const int64_t PREFIX_Y2 = PREFIX_X;

  ctypedef int32_t PREFIX_NamedLenArray[PREFIX_LEN];

  ctypedef int32_t PREFIX_ValuedLenArray[22];

  cdef enum:
    Weight,
    Normal,
    Bold,
  ctypedef uint8_t PREFIX_AbsoluteFontWeight_Tag;

  cdef struct PREFIX_Weight_Body:
    PREFIX_AbsoluteFontWeight_Tag tag;
    float _0;

  cdef union PREFIX_AbsoluteFontWeight:
    PREFIX_AbsoluteFontWeight_Tag tag;
    PREFIX_Weight_Body weight;

  void root(PREFIX_NamedLenArray x, PREFIX_ValuedLenArray y, PREFIX_AbsoluteFontWeight z);