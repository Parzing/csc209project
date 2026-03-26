#ifndef _MESSAGE_H_
#define _MESSAGE_H_

extern const unsigned char PACKET_START;
extern const unsigned char PACKET_END;
extern const int PACKET_SIZE;

int get_message(int socket, char* message);
int send_message(int socket, const char* message);

#endif
