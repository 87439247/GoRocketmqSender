namespace java rmq
namespace go rmq

struct RmqMessage{
     1: string Topic,
     2: i32 Flag,
     3: map<string,string> Properties,
     4: binary Body
    }
    
struct RmqSendResult{
     1: string MsgId,
     2: string QueueId,
     3: string QueueOffset,
     4: bool IsSendOK
     5: string ErrMsg
    }
service RmqThriftProdService{
     RmqSendResult send(1: RmqMessage msg)
     RmqSendResult sendOrderly(1: RmqMessage msg,2: i32 orderKey)
}