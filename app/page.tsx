'use client';
import { useState, useRef, useEffect } from 'react';

interface Message {
  role: 'user' | 'assistant';
  content: string;
}

export default function Home() {
  const [messages, setMessages] = useState<Message[]>([]);
  const [input, setInput] = useState('');
  const [loading, setLoading] = useState(false);
  const chatEndRef = useRef<HTMLDivElement>(null);

  useEffect(() => {
    chatEndRef.current?.scrollIntoView({ behavior: 'smooth' });
  }, [messages]);

  const handleSend = async (e: React.FormEvent) => {
    e.preventDefault();
    if (!input.trim() || loading) return;

    const userMsg: Message = { role: 'user', content: input };
    setMessages((prev) => [...prev, userMsg]);
    setInput('');
    setLoading(true);

    try {
      const res = await fetch('/api/chat', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ messages: [...messages, userMsg] }),
      });
      const data = await res.json();
      
      if (data.reply) {
        setMessages((prev) => [...prev, { role: 'assistant', content: data.reply }]);
      } else {
        setMessages((prev) => [...prev, { role: 'assistant', content: `Xəta: ${data.error}` }]);
      }
    } catch (err) {
      setMessages((prev) => [...prev, { role: 'assistant', content: 'Şəbəkə xətası baş verdi.' }]);
    } finally {
      setLoading(false);
    }
  };

  return (
    <main className="flex flex-col h-screen bg-gray-900 text-gray-100 font-sans">
      {/* Header */}
      <header className="p-4 border-b border-gray-800 bg-gray-950 flex justify-between items-center">
        <h1 className="text-xl font-black tracking-wider text-red-500 uppercase">⚡ CİNƏVƏR AI ⚡</h1>
        <span className="text-xs bg-red-950 text-red-400 px-2 py-1 rounded border border-red-800">No Filter</span>
      </header>

      {/* Chat Alanı */}
      <section className="flex-1 overflow-y-auto p-4 space-y-4">
        {messages.length === 0 && (
          <div className="text-center text-gray-500 mt-20">
            <p className="text-lg font-semibold">Cinəvər oyanıb və əmrlərini gözləyir.</p>
            <p className="text-sm text-gray-600 mt-1">İstənilən sualı ver, senzura yoxdur.</p>
          </div>
        )}
        
        {messages.map((msg, idx) => (
          <div key={idx} className={`flex ${msg.role === 'user' ? 'justify-end' : 'justify-start'}`}>
            <div className={`max-w-[80%] rounded-xl p-3.5 shadow-md ${
              msg.role === 'user' 
                ? 'bg-red-600 text-white rounded-br-none' 
                : 'bg-gray-800 text-gray-100 rounded-bl-none border border-gray-700'
            }`}>
              <span className="block text-[10px] uppercase font-bold opacity-60 mb-1">
                {msg.role === 'user' ? 'Sən' : 'Cinəvər'}
              </span>
              <p className="whitespace-pre-wrap leading-relaxed text-sm">{msg.content}</p>
            </div>
          </div>
        ))}
        
        {loading && (
          <div className="flex justify-start animate-pulse">
            <div className="bg-gray-800 text-red-400 rounded-xl p-3 text-xs font-mono border border-gray-700">
              Cinəvər düşünür...
            </div>
          </div>
        )}
        <div ref={chatEndRef} />
      </section>

      {/* Input Form */}
      <footer className="p-4 bg-gray-950 border-t border-gray-800">
        <form onSubmit={handleSend} className="flex gap-2 max-w-4xl mx-auto">
          <input
            type="text"
            value={input}
            onChange={(e) => setInput(e.target.value)}
            placeholder="Cinəvərə əmr ver..."
            className="flex-1 bg-gray-900 border border-gray-700 rounded-lg px-4 py-3 text-sm focus:outline-none focus:border-red-500 transition-colors"
          />
          <button
            type="submit"
            disabled={loading}
            className="bg-red-600 hover:bg-red-700 text-white px-6 py-3 rounded-lg font-bold text-sm transition-colors disabled:opacity-50"
          >
            Göndər
          </button>
        </form>
      </footer>
    </main>
  );
}
