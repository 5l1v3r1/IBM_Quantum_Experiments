//OPENQASM 2.0
IBMQASM 2.0;

include "qelib1.inc";

qreg q[5];
creg c[5];

sdg q[0];
h q[0];
sdg q[3];
cx q[0],q[2];
h q[3];
h q[0];
h q[1];
cx q[3],q[2];
s q[0];
h q[1];
h q[2];
h q[3];
cx q[1],q[2];
s q[3];
h q[1];
h q[2];
h q[4];
cx q[4],q[2];
h q[3];
cx q[3],q[2];
h q[4];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[3] -> c[3];
measure q[4] -> c[4];
