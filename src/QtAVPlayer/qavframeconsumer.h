#ifndef QAVFRAMECONSUMER_H
#define QAVFRAMECONSUMER_H

template <typename T>
class QAbstractAVFrameConsumer
{
public:
    virtual void consume(const T &frame) = 0;
};

#endif // QAVFRAMECONSUMER_H
