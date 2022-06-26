
When access K8s, you need to access from:

1, Authentication
2, Authorization
3, Access control

==============================================

[Authentication]
When access, you must go though [apiserver], it will act as gaurd role, you may need:

1, http cert
2, http token
3, http base [Username + password]

if you want to access pod, need serviceAccount

==============================================

[Authorization]
* Base on [RBAC] authorization
* Base on Role access control

What is RBAC?
1, Satisfy: Role ClusterRole  <------- Role binding -------> User group, serviceaccount
2, Satisfy: Role --> get / create / delete --> resource

Role: Specific namespace access right
ClusterRole: All namespace access right

Rolebinding and ClusterRoleBinding
==============================================

[Access control]
* A list. If this list has request content, then pass, else deny